SHELL := /bin/bash

export TIMESTAMP=$(shell date +"%s")
export pwd=$(shell pwd)
export APP_VERSION=$(shell cat APP_VERSION.txt)
export IMAGE_NAME=markdown-resume

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
	shellcheck ./watch.sh
	test -f ./output/sample.pdf || exit 1
	test -f ./output/sample.html || exit 1
	pdftotext ./output/sample.pdf - | grep "hidden text" || exit 1
	pd
	make clean
	test ! -f ./output/sample.pdf || exit 1
	test ! -f ./output/sample.html || exit 1

.PHONY: clean
clean:
	rm -f output/*.html
	rm -f output/*.pdf

.PHONY: docker
docker:
	docker build --load -t $(IMAGE_NAME):tmp .
	docker run -it --name "${IMAGE_NAME}-${TIMESTAMP}" -v "./src:/mdr/src" -v "./output:/mdr/output" $(IMAGE_NAME):tmp

.PHONY: docker-simple
docker-simple:
	docker run --pull "always" -it --entrypoint "./compile_all.sh" -v "./src:/mdr/src" -v "./output:/mdr/output" nietaki/markdown-resume:latest

.PHONY: push-tag
push-tag:
	if [[ -n $$(git status --porcelain) ]]; then \
		echo "There are uncommited changes. Please commit or stash them before pushing a tag."; \
		exit 1; \
	fi
	git tag -a v$(APP_VERSION) -m "Release version $(APP_VERSION)"
	git push origin v$(APP_VERSION)
	awk -F. -v OFS=. '{$$NF++; print}' APP_VERSION.txt > APP_VERSION.txt.tmp && mv APP_VERSION.txt.tmp APP_VERSION.txt; \
	echo "Version automatically bumped to: $$(cat APP_VERSION.txt)"
