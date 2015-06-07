###################################################
# Dockerfile to build Elixir container images
# Based on Ubuntu
##################################################
FROM ubuntu:14.04
MAINTAINER Kleber Shimabuku

RUN apt-get update && apt-get install -y \
    wget \
    git

# Install Elixir
RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install -y erlang elixir vim curl
#
# Set locale
RUN locale-gen pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR:pt:en
RUN dpkg-reconfigure locales

# Setup vimrc
RUN cd /root && mkdir -p .vim/bundle \
  && cd /root/.vim/bundle \
  && git clone https://github.com/kien/ctrlp.vim

# Install pathogen
RUN mkdir -p /root/.vim/autoload /root/.vim/bundle && \
curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install vim-elixir
RUN git clone https://github.com/elixir-lang/vim-elixir.git /root/.vim/bundle/vim-elixir

# Install NERDtree
RUN git clone https://github.com/scrooloose/nerdtree.git /root/.vim/bundle/nerdtree

COPY vimrc /root/.vimrc
RUN cd

CMD ["/bin/bash"]
