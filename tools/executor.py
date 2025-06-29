# ===- executor.py -------------------------------------------------------------
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

import subprocess
from pathlib import Path
from typing import Tuple


def execute_and_capture(exe_path: Path) -> Tuple[int, str]:
    """
    Execute a compiled executable file and capture its return code and stdout.

    Args:
        exe_path (Path): Path to the executable binary.

    Returns:
        Tuple[int, str]: A tuple of (returncode, stdout).
        If execution fails or times out, returncode is -1 and stdout is an empty string.
    """
    try:
        result = subprocess.run(
            [str(exe_path)], stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=5
        )
        stdout = result.stdout.decode().strip()
        return result.returncode, stdout
    except subprocess.TimeoutExpired:
        print(f"⏰ Execution timed out: {exe_path}")
        return -1, ""
    except Exception as e:
        print(f"⚠️ Execution failed: {exe_path}\n{e}")
        return -1, ""
