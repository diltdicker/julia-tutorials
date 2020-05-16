# Getting started with Julia 1.4.1 in Jupyter with IJulia

## Step 1. Install Julia

```bash
`# create directory for julia` && \
mkdir -p $HOME/.julia_home && \
`# download url for julia for linux` && \
`# latest at https://julialang.org/downloads/` && \
wget -O $HOME/.julia_home/julia.tar.gz https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.1-linux-x86_64.tar.gz && \
`# unpack tar.gz` && \
tar -xzf $HOME/.julia_home/julia.tar.gz -C $HOME/.julia_home && \
`# remove tar.gz file as it is no longer needed` && \
rm -f $HOME/.julia_home/julia.tar.gz && \
`# append the julia binary to your PATH variable in your .bashrc file` && \
touch ${HOME}/.bashrc && \
printf "\n"\
"# julia\n"\
"export PATH=\"$HOME/.julia_home/julia-1.4.1/bin:\$PATH\"\n" >> ${HOME}/.bashrc && \
`# source your .bashrc to apply PATH changes to your current shell` && \
. ${HOME}/.bashrc
```

## Step 2. Start Julia and Install IJulia

```bash
`# start julia` && \
julia
```

```julia
# istall the IJulia package
using Pkg
Pkg.add("IJulia")

# start Jupyter notebook
using IJulia
notebook(dir=".")
# answer yes for the prompt to use miniconda
# alternatively you can add the kwarg detached=true to run the notebook detached
```

## Step 3. There is no Step 3

At this poin you will have opened a browser with jupyter notebook.

To create a new julia notebook just click on NEW and select the julia for the language
