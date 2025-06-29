# ===- compiler.py -------------------------------------------------------------
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
from typing import Optional


def compile_reference_impl(c_path: Path, output_dir: Path) -> Optional[Path]:
    """
    Compile a reference C implementation (main.c) into an executable.

    Args:
        c_path (Path): Path to the C source file.
        output_dir (Path): Directory where the compiled executable should be saved.

    Returns:
        Optional[Path]: Path to the compiled executable if successful, otherwise None.
    """
    exe_path = output_dir / (c_path.stem + "_ref")
    compile_cmd = ["gcc", str(c_path), "-o", str(exe_path)]

    try:
        subprocess.run(
            compile_cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        print(f"✅ Reference implementation compiled successfully: {exe_path}")
        return exe_path
    except subprocess.CalledProcessError as e:
        print("❌ Failed to compile reference implementation:")
        print(e.stderr.decode())
        return None


def compile_asm_to_executable(s_path: Path, output_dir: Path) -> Optional[Path]:
    """
    Compile an assembly (.s) file into an executable.

    Args:
        s_path (Path): Path to the assembly source file.
        output_dir (Path): Directory where the compiled executable should be saved.

    Returns:
        Optional[Path]: Path to the compiled executable if successful, otherwise None.
    """
    exe_path = output_dir / s_path.stem
    compile_cmd = ["gcc", str(s_path), "-o", str(exe_path)]

    try:
        subprocess.run(
            compile_cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        print(f"✅ Assembly file compiled successfully: {exe_path}")
        return exe_path
    except subprocess.CalledProcessError as e:
        print("❌ Failed to compile assembly file:")
        print(e.stderr.decode())
        return None
