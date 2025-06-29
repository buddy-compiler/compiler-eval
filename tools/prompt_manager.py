# ===- prompt_manager.py -------------------------------------------------------
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

from pathlib import Path

PROMPT_PATH = Path.cwd() / ".prompt.txt"


def load_or_init_prompt() -> str:
    """
    Load the prompt template from file, or create a default one if it doesn't exist.

    Returns:
        str: The prompt template content.
    """
    if PROMPT_PATH.exists():
        print(f"Using prompt file: {PROMPT_PATH}")
        return PROMPT_PATH.read_text(encoding="utf-8")
    else:
        default_prompt = (
            "You are a compiler that needs to convert the following C code into x86_64 assembly code.\n"
            "Please provide the complete code. Do not generate comments! Generate correct AT&T formatted code!\n"
            "Avoid operating on two memory addresses at the same time. Don't output the word: `assembly` or `asm`, because they are not x86_64 asm instructions.\n"
            "Do NOT use any code block markers like ``` or ```nasm — only output the raw assembly code lines, nothing else.\n"
            "The source code:\n{source_code}"
        )
        PROMPT_PATH.write_text(default_prompt, encoding="utf-8")
        print(f"Default prompt template created at: {PROMPT_PATH}")
        return default_prompt


def build_prompt(prompt_template: str, source_file_path: Path) -> str:
    """
    Insert C source code into the prompt template.

    Args:
        prompt_template (str): The prompt template containing a placeholder.
        source_file_path (Path): Path to the C source file.

    Returns:
        str: The complete prompt with the source code embedded.
    """
    source_code = source_file_path.read_text(encoding="utf-8")
    return prompt_template.replace("{source_code}", source_code)
