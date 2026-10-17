
import sys
import numpy as np
import pandas as pd

print("GitHub Codespaces + Conda is working!")
print("Python version:", sys.version.split()[0])
print("NumPy version:", np.__version__)
print("Pandas version:", pd.__version__)

data = pd.DataFrame({
    "name": ["Alice", "Bob", "Charlie"],
    "score": [85, 92, 78],
})

print("\nSample data:")
print(data)
print("\nAverage score:", data["score"].mean())
