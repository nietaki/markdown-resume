FROM ubuntu:latest

RUN apt update && apt install -y pandoc wkhtmltopdf

ENV WORKDIR=/mdr

WORKDIR ${WORKDIR}
COPY . ./

VOLUME ${WORKDIR}/output
VOLUME ${WORKDIR}/src

ENTRYPOINT make
