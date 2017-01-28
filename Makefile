REPO = docker.io
NS = mschygulla
NAME = chef-client
VERSION ?= 12.18.31
SHELL := /bin/bash

.PHONY: build test push clean

default: build test

build:
	docker build --build-arg CHEF_VERSION=$(VERSION) -t $(NAME):$(VERSION) .

test:
	docker run --rm -ti $(NAME):$(VERSION) chef-client -v

push:
	docker tag $(NAME):$(VERSION) $(REPO)/$(NS)/$(NAME):$(VERSION)
	docker push $(REPO)/$(NS)/$(NAME):$(VERSION)

clean:
	-docker rmi $(REPO)/$(NS)/$(NAME):$(VERSION)
	-docker rmi $(NAME):$(VERSION)
