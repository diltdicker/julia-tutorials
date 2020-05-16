#!/bin/bash

julia_home=${HOME}/.julia_home
julia_tar=julia.tar.gz
julia_ver=julia-1.4.1
julia_tar_url=https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.1-linux-x86_64.tar.gz
julia_bin=${julia_home}/${julia_ver}/bin
julia_jl=run_jupyter.jl

default:
	echo "\n"\
	"install-julia: installs julia (assumes ubunutu 18.04 env)\n"\
	"add-julia-path: appends your .bashrc file to add jullia to your PATH\n"\
	"run-jupyter: starts a julia instance of jupyter notebook"\
	""

install-julia:
	mkdir -p ${julia_home}
	wget -O ${julia_home}/${julia_tar} ${julia_tar_url}
	tar -xzf ${julia_home}/${julia_tar} -C ${julia_home}
	rm -f ${julia_home}/${julia_tar}

add-julia-path:
	touch ${HOME}/.bashrc
	echo "\n"\
	"# julia\n"\
	"export PATH=\"${julia_bin}:\$$PATH\"" >> ${HOME}/.bashrc
	echo "\nrun this command to apply PATH changes to your current shell:\n\n"\
	". ${HOME}/.bashrc\n"

run-jupyter:
	julia ${julia_jl}
