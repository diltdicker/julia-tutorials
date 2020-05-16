# istall the IJulia package
using Pkg
Pkg.add("IJulia")

# start Jupyter notebook
using IJulia
notebook(dir=".")