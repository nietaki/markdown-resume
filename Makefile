SHELL := /bin/bash

export TIMESTAMP=$(shell date +"%s")
export pwd=$(shell pwd)

.PHONY: all
all:
	./compile_all.sh

.PHONY: watch
watch:
	./watch.sh

.PHONY:
test:
	shellcheck ./compile.sh
	shellcheck ./compile_all.sh
	make
	test -f ./output/sample.pdf || exit 1
	test -f ./output/sample.html || exit 1
	make clean
	test ! -f ./output/sample.pdf || exit 1
	test ! -f ./output/sample.html || exit 1

.PHONY: clean
clean:
	rm -f output/*.html
	rm -f output/*.pdf

.PHONY: docker
docker:
	docker build -t markdown-resume .
	docker run -it  --name "markdown-resume-${TIMESTAMP}" -v "${pwd}/src:/mdr/src" -v "${pwd}/output:/mdr/output" markdown-resume

# a convenience tool for overwriting the example CV built from nietaki's private source
.PHONY: nietaki
nietaki:
	cp -f output/CV_Jacek_Krolikowski_en.pdf .
