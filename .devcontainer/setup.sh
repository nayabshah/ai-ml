#!/usr/bin/env bash
set -e

source /opt/conda/etc/profile.d/conda.sh

if conda env list | awk '{print $1}' | grep -qx myproject; then
    conda env update -n myproject -f environment.yml --prune
else
    conda env create -f environment.yml
fi

echo "Conda environment setup complete."