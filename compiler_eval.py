# ===- compiler_eval.py --------------------------------------------------------
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ===---------------------------------------------------------------------------

import sys
from langchain.schema import HumanMessage

import tools.llm_config as llm_config
import tools.prompt_manager as prompt_manager
import tools.kernel_selector as kernel_selector
import tools.ai_generator as ai_generator
import tools.compiler as compiler
import tools.executor as executor
import tools.logger as logger


def main():
    # Load LLM configuration or guide user to create one.
    config = llm_config.load_or_init_config()

    # Select model.
    answer = (
        input(f"Use default model [{config['default_model']}]? (Y/n): ").strip().lower()
    )
    use_default = answer == "" or answer.startswith("y")
    model = (
        config["default_model"] if use_default else input("Enter model name: ").strip()
    )

    # Create LLM instance.
    try:
        llm = llm_config.create_llm(
            api_key=config["api_key"], model=model, base_url=config["base_url"]
        )
    except ValueError as e:
        print(e)
        sys.exit(1)

    # Select prompt template.
    prompt_template = prompt_manager.load_or_init_prompt()
    answer = (
        input(f"Use default prompt template? \n```\n{prompt_template}\n```\n(Y/n): ")
        .strip()
        .lower()
    )
    use_default = answer == "" or answer.startswith("y")

    # Load prompt template
    if use_default is False:
        prompt_template = prompt_manager.load_addition_prompt()
        print(f"Using Addition prompt template. \n```\n{prompt_template}\n```\n")

    # Load kernel files.
    kernel_dir = kernel_selector.choose_kernel_dir()
    source_file = kernel_selector.find_header_file(kernel_dir)

    # Build final prompt from template and C header file.
    full_prompt = prompt_manager.build_prompt(prompt_template, source_file)

    # Invoke LLM and extract assembly code.
    response = llm.invoke([HumanMessage(content=full_prompt)])
    raw_asm = response.content
    clean_asm = ai_generator.strip_code_block_markers(raw_asm)
    # Prepare output directory and write .s file.
    log_dir = logger.create_log_dir()
    s_file = kernel_selector.find_template_s_file(kernel_dir)
    kernel_name = kernel_dir.name
    s_output_path = ai_generator.replace_placeholder_and_save(
        s_file, clean_asm, log_dir, kernel_name
    )

    # Compile and execute the generated assembly code.
    exe_path = compiler.compile_asm_to_executable(s_output_path, log_dir)
    ai_retcode, ai_output = executor.execute_and_capture(exe_path)

    # Compile and execute the reference implementation if AI executable succeeded.
    ref_retcode = None
    ref_output = None
    ref_exe = None
    if ai_retcode != -1:
        ref_c_file = kernel_selector.find_reference_c_file(kernel_dir)
        ref_exe = compiler.compile_reference_impl(ref_c_file, log_dir)
        ref_retcode, ref_output = executor.execute_and_capture(ref_exe)

        print("🧾 Comparison Result:")
        if ai_retcode == ref_retcode and ai_output == ref_output:
            print("✅ AI-generated assembly matches the reference implementation!")
        else:
            print(
                "❌ Mismatch between AI-generated assembly and reference implementation"
            )
            print(f"AI returncode: {ai_retcode}, output: {ai_output}")
            print("-----------------------------------------------------------")
            print(f"REF returncode: {ref_retcode}, output: {ref_output}")
    else:
        print("⚠️ AI executable failed. Skipping reference implementation comparison.")

    # Determine whether results match.
    match_result = (
        ai_retcode == ref_retcode and ai_output == ref_output
        if ref_retcode is not None
        else None
    )

    # Write logs.
    logger.write_log(
        log_dir=log_dir,
        model=model,
        prompt_template=prompt_template,
        source_file=str(source_file),
        full_prompt=full_prompt,
        response_text=response.content,
        ai_retcode=ai_retcode,
        ai_output=ai_output,
        ref_retcode=ref_retcode if ref_exe else None,
        ref_output=ref_output if ref_exe else None,
        match=match_result,
    )


if __name__ == "__main__":
    main()
