.PHONY: build run

REPO  ?= denden047/latex:alpha

build:
	docker build -t $(REPO) .
	docker push $(REPO)
