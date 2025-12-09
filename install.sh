curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

sudo apt-get update
sudo apt-get install -y gcc

uv sync
source .venv/bin/activate
uv pip install setuptools
uv pip install torch
uv pip install Cython
uv pip install -e . --no-build-isolation
