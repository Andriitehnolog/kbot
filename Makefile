VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)


format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

build: format
	CGO_ENABLED=0 GOOS=${TARGETOS} GOOARCH=${shell dpkg --print-architecture} go build -v -o kbot -ldflags "-X="github.com/Andriitehnolog/kbot/cmd.appVersion=${VERSION}

clean:
	rm -rf kbot