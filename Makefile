VERSION


format:
	gofmt -s -w ./
build:
	go build -ldflags -v -o kbot"-X"github.com/Andriitehnolog/kbot/cmd.appVersion=${VERSION}