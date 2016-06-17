FROM alpine:latest

RUN apk add --no-cache --update bash git python vim && \
    git clone https://github.com/rushsinging/jTools.git && \
    cp jTools/sh/bash_aliases ~/.bash_aliases && \
    cp jTools/sh/bash_profile ~/.bash_profile && \
    cp jTools/sh/bashrc ~/.bashrc && \
    git clone https://github.com/rushsinging/vimrc.git .vim_runtime && \
     

ENTRYPOINT ["bash"]
