VERSION=


format:
	gofmt -s -w ./

build:
	go build -v -o kbot -ldflags "-X="github.com/Andriitehnolog/kbot/cmd.appVersion=${VERSION}