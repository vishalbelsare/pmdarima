#!/bin/bash

pip install jinja2
mkdir conda
cd build_tools/common
python render_meta.py
cd -
conda install conda-build
conda-build --python=$1 conda/