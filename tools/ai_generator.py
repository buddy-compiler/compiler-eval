# ===- ai_generator.py ---------------------------------------------------------
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

import re
from pathlib import Path


def strip_code_block_markers(text: str) -> str:
    """
    Removes code block markers such as ```nasm, ```asm, or ``` from a given text,
    and extracts the enclosed code content.

    If no such markers are found, the original text is returned.

    Args:
        text (str): The input string that may contain code block markers.

    Returns:
        str: The cleaned code content without the surrounding code block markers.
    """
    pattern = r"```(?:[a-zA-Z0-9]*)?\n(.*?)\n```"
    matches = re.findall(pattern, text, re.DOTALL)
    if matches:
        return matches[0].strip()
    return text.strip()


def replace_placeholder_and_save(
    s_template_path: Path, ai_asm: str, output_dir: Path, kernel_name: str
) -> Path:
    """
    Replaces the <AI_PLACEHOLDER> in the template `.s` file with AI-generated assembly code,
    and saves the result as a new `.s` file in the specified output directory.

    Args:
        s_template_path (Path): Path to the assembly template file containing <AI_PLACEHOLDER>.
        ai_asm (str): Assembly code generated by the AI model to insert into the template.
        output_dir (Path): Directory where the final `.s` file should be saved.
        kernel_name (str): Name of the kernel, used to construct the output file name.

    Raises:
        ValueError: If the placeholder `<AI_PLACEHOLDER>` is not found in the template file.

    Returns:
        Path: The full path to the generated `.s` file.
    """
    content = s_template_path.read_text(encoding="utf-8")
    if "<AI_PLACEHOLDER>" not in content:
        raise ValueError(
            f"Placeholder <AI_PLACEHOLDER> not found in {s_template_path.name}"
        )

    replaced_content = content.replace("<AI_PLACEHOLDER>", ai_asm.strip())
    output_path = output_dir / f"{kernel_name}-ai.s"
    output_path.write_text(replaced_content, encoding="utf-8")

    print(f"Assembly file generated and saved to: {output_path}")
    return output_path
