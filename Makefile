.PHONY: build-image
build-image:
	docker build -t compilerbook --platform=linux/amd64 https://www.sigbus.info/compilerbook/Dockerfile

.PHONY: dev
dev:
	docker run --rm -it -v $(CURDIR)/src:/home/user/src -w /home/user/src/9cc --platform=linux/amd64 compilerbook

