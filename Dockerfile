FROM ubuntu:15.04

# COPY ./sources.list.vivid /etc/apt/sources.list

RUN apt-get update && apt-get install -y curl openssh-server ca-certificates postfix 

ENV GITLAB_VERSION 8.9.0

RUN wget https://packages.gitlab.com/gitlab/gitlab-ce/packages/debian/jessie/gitlab-ce_$GITLAB_VERSION-ce.0_amd64.deb/download && \
    dpkg -i gitlab-ce_$GITLAB_VERSION-ce.0_amd64.deb
