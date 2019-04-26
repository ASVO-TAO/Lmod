FROM centos:7.6.1810

RUN mkdir -p /apps/lmod_src

WORKDIR /apps/lmod_src

# Install the dependencies
RUN yum install -y epel-release
RUN yum install -y lua lua-bitop lua-devel lua-filesystem lua-posix curl gcc tcl tcl-devel make rsync

# Install bash_unit unit testing framework
RUN curl -s https://raw.githubusercontent.com/pgrange/bash_unit/master/install.sh | bash

ADD . /apps/lmod_src/

# Install lmod
RUN ./configure --prefix=/apps/lmod/
RUN make install

# Copy test module hierarchy
RUN rsync -ar tests/hierarchy/* /apps/
