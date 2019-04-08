.PHONY: docker

EXECUTABLE ?= drone-datadog
IMAGE ?= gowerstreet/drone-datadog:$(TAG)

build:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o $(EXECUTABLE)

docker: build
	docker build --rm -t $(IMAGE) .
