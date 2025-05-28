CC = gcc
CFLAGS = -Wall -I.

# Main program build
build: bin/main

bin/main: src/main.c
	mkdir -p bin
	$(CC) $(CFLAGS) -o bin/main src/main.c

# Test build and run
test: tests/test_main.c
	mkdir -p bin
	$(CC) $(CFLAGS) -o bin/test tests/test_main.c
	./bin/test

clean:
	rm -rf bin/*

