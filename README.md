# compiler-eval

## Steps


1. **Activate a Python virtual environment and install required dependencies**:

```bash
conda activate <your-env>
pip install -r requirements.txt
```

2. **Run the compiler-eval script**:

```bash
python compiler_eval.py
```

You will be guided through an interactive process to:

- Configure your LLM platform;

- Select a kernel directory containing the C source;

- Generate assembly code from the C source using your selected LLM;

- Compile and execute both the generated assembly and the reference implementation;

- Compare the results and save logs.

3. **Customize the prompt**:

The default prompt is automatically created at `compiler-eval/.prompt.txt`.
You can edit this file to adjust the behavior of code generation.
