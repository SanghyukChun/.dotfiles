#!/bin/bash
python3 -m pip install --user --upgrade pip
python3 -m pip install --user virtualenv
python3 -m venv $HOME/env

python3 -m pip install -r python/requirements.txt

cp python/pylintrc $HOME/.pylintrc
