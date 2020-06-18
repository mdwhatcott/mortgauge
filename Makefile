#!/usr/bin/make -f

test:
	go fmt ./...
	go test -v -timeout=1s -cover -count=1 ./...

install: test
	go install github.com/mdwhatcott/mortgauge/cmd/...