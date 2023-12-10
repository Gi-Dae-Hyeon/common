#!/bin/bash

# install poetry
apt update
apt install curl -y
curl -sSL https://install.python-poetry.org | python3 -

echo 'export PATH="/root/.local/bin:$PATH"' > ~/.bashrc
echo 'export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring' > ~/.bashrc
source ~/.bashrc

# install python3.10
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa -y
apt update
apt install python3.10 -y

# install libraries
pip install torch transformers datasets faiss-gpu
