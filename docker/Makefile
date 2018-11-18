.PHONY: build run

REPO  ?= denden047/latex

build:
	docker build -t $(REPO) .
	docker push $(REPO)
