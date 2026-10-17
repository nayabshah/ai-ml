
#!/usr/bin/env bash
set -e

CONDA_DIR="$HOME/conda"

# Install Miniforge if Conda is not already installed
if [ ! -x "$CONDA_DIR/bin/conda" ]; then
    INSTALLER="/tmp/Miniforge3-Linux-$(uname -m).sh"

    curl -fL \
      "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-$(uname -m).sh" \
      -o "$INSTALLER"

    bash "$INSTALLER" -b -p "$CONDA_DIR"
fi

# Initialize Conda for this script
source "$CONDA_DIR/etc/profile.d/conda.sh"

# Create or update the project environment
if conda env list | awk '{print $1}' | grep -qx myproject; then
    conda env update -n myproject -f environment.yml --prune
else
    conda env create -f environment.yml
fi

echo "Conda setup complete. Run: conda activate myproject"
