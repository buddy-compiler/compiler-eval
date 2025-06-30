# ===- llm_config.py -----------------------------------------------------------
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

import json
from pathlib import Path
from langchain_openai import ChatOpenAI
from langchain_anthropic import ChatAnthropic
from langchain_core.language_models import BaseChatModel

CONFIG_PATH = Path.cwd() / ".llm.config.json"


def load_or_init_config() -> dict:
    """
    Load the LLM configuration from file, or prompt the user to create one if it doesn't exist.

    Returns:
        dict: A dictionary containing API key, base URL, and default model name.
    """
    if CONFIG_PATH.exists():
        with open(CONFIG_PATH, "r") as f:
            return json.load(f)
    else:
        print(
            "First-time setup: please enter the following information to generate a config file."
        )
        config = {
            "api_key": input("Enter your unified API key: ").strip(),
            "base_url": input("Enter the base URL: ").strip(),
            "default_model": input(
                "Enter the default model name (e.g., gpt-4o or claude-sonnet-4-20250514 or gemini-2.0-flash-exp): "
            ).strip(),
        }
        with open(CONFIG_PATH, "w") as f:
            json.dump(config, f, indent=2)
        print(f"Configuration saved to {CONFIG_PATH}")
        return config


def create_llm(api_key: str, model: str, base_url: str) -> BaseChatModel:
    """
    Create an LLM instance based on the specified model name.

    Args:
        api_key (str): API key for authentication.
        model (str): Model name (e.g., "gpt-4o", "claude-3").
        base_url (str): Base URL of the LLM provider.

    Raises:
        ValueError: If the model name is not supported.

    Returns:
        BaseChatModel: An instance of a LangChain-compatible LLM.
    """
    model_lower = model.lower()

    if model_lower.startswith("gpt-"):
        return ChatOpenAI(
            model=model, openai_api_key=api_key, base_url=base_url + "/v1"
        )
    elif model_lower.startswith("claude-"):
        return ChatAnthropic(model=model, api_key=api_key, base_url=base_url)
    elif model_lower.startswith("gemini-"):
        return ChatOpenAI(model=model, api_key=api_key, base_url=base_url + "/v1")
    else:
        raise ValueError(f"Unsupported model type: {model}")
