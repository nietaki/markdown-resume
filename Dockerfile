FROM ubuntu:latest

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
  && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN apt-get update && apt-get install -y make pandoc lmodern wkhtmltopdf inotify-tools

WORKDIR /mdr
ENV XDG_RUNTIME_DIR=/tmp/runtime-root


RUN mkdir -p output
RUN mkdir -p src

COPY ./styles ./styles
COPY ./src/sample.md ./src/sample.md
COPY ./*.md ./
COPY ./*.txt ./
COPY ./*.sh ./
COPY Makefile ./

VOLUME /mdr/output
VOLUME /mdr/src

ENTRYPOINT make watch
