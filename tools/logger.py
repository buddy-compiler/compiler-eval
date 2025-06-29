# ===- logger.py ---------------------------------------------------------------
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
from datetime import datetime

LOG_DIR = Path.cwd() / "logs"


def create_log_dir() -> Path:
    """
    Create a timestamped subdirectory under the logs directory.

    Returns:
        Path: The created log directory path.
    """
    LOG_DIR.mkdir(exist_ok=True)
    timestamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    log_dir = LOG_DIR / f"log-{timestamp}"
    log_dir.mkdir()
    return log_dir


def write_log(
    log_dir: Path,
    model: str,
    prompt_template: str,
    source_file: str,
    full_prompt: str,
    response_text: str,
    ai_retcode: int = None,
    ai_output: str = None,
    ref_retcode: int = None,
    ref_output: str = None,
    match: bool = None,
):
    """
    Write a full log of the evaluation process to a text file.

    Args:
        log_dir (Path): Directory where the log file should be saved.
        model (str): Name of the model used.
        prompt_template (str): The raw prompt template used.
        source_file (str): Path to the input source file.
        full_prompt (str): The fully composed prompt, including source code.
        response_text (str): Raw response from the model.
        ai_retcode (int, optional): Return code from executing the AI-generated code.
        ai_output (str, optional): Output from executing the AI-generated code.
        ref_retcode (int, optional): Return code from executing the reference implementation.
        ref_output (str, optional): Output from executing the reference implementation.
        match (bool, optional): Whether the outputs match.
    """
    log_path = log_dir / "log.txt"
    with open(log_path, "w", encoding="utf-8") as f:
        f.write(f"[Model]\n{model}\n\n")
        f.write(f"[Source File Path]\n{source_file}\n\n")
        f.write(f"[Prompt Template]\n{prompt_template}\n\n")
        f.write(f"[Final Prompt (with Source Code)]\n{full_prompt}\n\n")
        f.write(f"[Model Response]\n{response_text}\n\n")

        if ai_retcode is not None:
            f.write("[AI Assembly Execution Result]\n")
            f.write(f"Return code: {ai_retcode}\n")
            f.write(f"Output:\n{ai_output}\n\n")

        if ref_retcode is not None:
            f.write("[Reference Implementation Execution Result]\n")
            f.write(f"Return code: {ref_retcode}\n")
            f.write(f"Output:\n{ref_output}\n\n")

        if match is not None:
            f.write("[Result Comparison]\n")
            f.write("Matched ✅\n" if match else "Mismatched ❌\n")

    print(f"\nLog saved to: {log_path}")
