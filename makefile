CC = gcc
CFLAGS = -Wall -I.


build:
	mkdir -p bin
	gcc -Wall -I. -o bin/main src/main.c

# Main program build
build: src/main.c
	$(CC) $(CFLAGS) -o bin/main src/main.c

# Test build and run
test: tests/test_main.c
	$(CC) $(CFLAGS) -o bin/test tests/test_main.c
	./bin/test

clean:
	rm -rf bin/*
