FROM geerlingguy/docker-ubuntu1604-ansible:latest
LABEL maintainer="Stephen Dunne"
ENV container=docker

## Install PIP and ansible-lint
RUN apt-get update \
  && apt-get install -y \
     python-pip \
  && rm -Rf /var/lib/apt/lists/* \
  && pip install ansible-lint \
  && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
  && apt-get clean

