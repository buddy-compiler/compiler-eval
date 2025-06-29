# ===- kernel_selector.py ------------------------------------------------------
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

KERNEL_DIR = Path.cwd() / "kernels"


def choose_kernel_dir(kernels_path: Path = KERNEL_DIR) -> Path:
    """
    List all subdirectories under the `kernels` directory and prompt the user to select one.

    Args:
        kernels_path (Path): The base path where kernel directories are located. Defaults to ./kernels.

    Raises:
        FileNotFoundError: If no subdirectories are found.

    Returns:
        Path: The selected kernel subdirectory path.
    """
    subdirs = [d for d in kernels_path.iterdir() if d.is_dir()]
    if not subdirs:
        raise FileNotFoundError(f"No subdirectories found under {kernels_path}")

    print("Please choose a kernel source directory to compile:")
    for i, sub in enumerate(subdirs):
        print(f"{i + 1}. {sub.name}")

    while True:
        choice = input(f"Enter a number (1-{len(subdirs)}): ").strip()
        if choice.isdigit() and 1 <= int(choice) <= len(subdirs):
            return subdirs[int(choice) - 1]
        print("Invalid input, please try again.")


def find_header_file(kernel_dir: Path) -> Path:
    """
    Find a .h file in the given kernel directory.

    Args:
        kernel_dir (Path): The kernel directory to search.

    Raises:
        FileNotFoundError: If no .h files are found.

    Returns:
        Path: Path to the found header file.
    """
    headers = list(kernel_dir.glob("*.h"))
    if not headers:
        raise FileNotFoundError(f"No .h file found in {kernel_dir}")
    if len(headers) > 1:
        print(f"Warning: multiple .h files found, using the first: {headers[0].name}")
    return headers[0]


def find_template_s_file(kernel_dir: Path) -> Path:
    """
    Find a *_template.s file in the given kernel directory.

    Args:
        kernel_dir (Path): The kernel directory to search.

    Raises:
        FileNotFoundError: If no *_template.s files are found.

    Returns:
        Path: Path to the found template assembly file.
    """
    matches = list(kernel_dir.glob("*_template.s"))
    if not matches:
        raise FileNotFoundError(f"No *_template.s file found in {kernel_dir}")
    return matches[0]


def find_reference_c_file(kernel_dir: Path) -> Path:
    """
    Find the reference C implementation main.c in the given kernel directory.

    Args:
        kernel_dir (Path): The kernel directory to search.

    Raises:
        FileNotFoundError: If main.c does not exist.

    Returns:
        Path: Path to main.c.
    """
    main_c = kernel_dir / "main.c"
    if not main_c.exists():
        raise FileNotFoundError(f"No reference main.c found in {kernel_dir}")
    return main_c
