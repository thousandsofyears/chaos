FROM alpine:latest

RUN apk add --no-cache --update bash git python-dev gcc cmake vim && \
    bash -c "git clone https://github.com/rushsinging/jTools.git && \
    cp jTools/sh/bash_aliases ~/.bash_aliases && \
    cp jTools/sh/bash_profile ~/.bash_profile && \
    cp jTools/sh/bashrc ~/.bashrc && \
    git clone https://github.com/rushsinging/vimrc.git .vim_runtime && \
    pushd .vim_runtime && \
    git submodule update --init --recursive && \
    pushd sources_plugins/ycm-vim && \
    git submodule update --init --recursive"
     

ENTRYPOINT ["bash"]
