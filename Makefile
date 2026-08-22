CC = gcc
CFLAGS = -Wall -g

TARGET = prog3

all:
	$(CC) $(CFLAGS) prog3.c -o $(TARGET)

run:
	./$(TARGET)

clean:
	rm -f $(TARGET)
