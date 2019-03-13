.PHONY: build run

REPO  ?= denden047/latex

build:
	docker build -t $(REPO):latest .
	docker push $(REPO):latest
