.PHONY: build run clean test lint tidy db

BINARY := paravizor
CMD    := ./cmd/paravizor

build:
	go build -o $(BINARY) $(CMD)

run: build
	./$(BINARY)

clean:
	rm -f $(BINARY)

test:
	go test ./...

lint:
	golangci-lint run ./...

tidy:
	go mod tidy

db:
	sqlc generate
