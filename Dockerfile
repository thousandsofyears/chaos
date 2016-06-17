FROM alpine:latest

RUN apk add --no-cache --update grep bash git python-dev build-base gcc abuild binutils cmake vim && \
    bash -c "pushd ~ && \
    git clone https://github.com/rushsinging/jTools.git && \
    cp jTools/sh/bash_aliases ~/.bash_aliases && \
    cp jTools/sh/bash_profile ~/.bash_profile && \
    cp jTools/sh/bashrc ~/.bashrc && \
    git clone https://github.com/rushsinging/vimrc.git .vim_runtime && \
    pushd .vim_runtime && \
    git submodule update --init --recursive && \
    pushd sources_plugins/ycm-vim && \
    git submodule update --init --recursive && \
    ./install.sh && popd && sh install_jade_vimrc.sh && sh make_dircolors.sh"
     

ENTRYPOINT ["bash", "-c"]
