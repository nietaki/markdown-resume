SHELL := /bin/bash

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
