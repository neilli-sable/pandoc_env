FROM ubuntu:xenial
RUN apt -y update
RUN apt -y upgrade
RUN apt -y install texlive-full
RUN apt -y install plantuml
RUN apt -y install wget zlib1g-dev git-core vim-tiny
RUN apt -y install cabal-install
RUN (cabal update; cabal install --global happy; cabal install --global pandoc-crossref; cabal install --global pandoc-crossref)
RUN (git clone https://github.com/jodonoghue/pandoc-plantuml-filter.git; cd pandoc-plantuml-filter/; cabal install --global)
ENV LC_ALL C.UTF-8
