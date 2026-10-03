CC = gcc
CFLAGS = -Wall -g

TARGET = prog3
FIFO_SERVER = fifo_server
FIFO_CLIENT = fifo_client
SIGNAL_HANDLER = signal_handler

all:
	$(CC) $(CFLAGS) prog3.c -o $(TARGET)
	$(CC) $(CFLAGS) prog6_fifo_server.c -o $(FIFO_SERVER)
	$(CC) $(CFLAGS) prog6_fifo_client.c -o $(FIFO_CLIENT)
	$(CC) $(CFLAGS) signal_handler.c -o $(SIGNAL_HANDLER)

run:
	./$(TARGET)

clean:
	rm -f $(TARGET) $(FIFO_SERVER) $(FIFO_CLIENT) $(SIGNAL_HANDLER)
