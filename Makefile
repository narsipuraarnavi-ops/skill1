CC = gcc
CFLAGS = -Wall -g

TARGET = prog3
FIFO_SERVER = fifo_server
FIFO_CLIENT = fifo_client
SIGNAL_HANDLER = signal_handler
LINUX_ADDR = prog7_linuxaddr
MEMORY_DEMO = memory_demo

all:
	$(CC) $(CFLAGS) prog3.c -o $(TARGET)
	$(CC) $(CFLAGS) prog6_fifo_server.c -o $(FIFO_SERVER)
	$(CC) $(CFLAGS) prog6_fifo_client.c -o $(FIFO_CLIENT)
	$(CC) $(CFLAGS) signal_handler.c -o $(SIGNAL_HANDLER)
	$(CC) $(CFLAGS) prog7_linuxaddr.c -o $(LINUX_ADDR)
	$(CC) $(CFLAGS) memory_demo.c -o $(MEMORY_DEMO)

run:
	./$(TARGET)

clean:
	rm -f $(TARGET) $(FIFO_SERVER) $(FIFO_CLIENT) $(SIGNAL_HANDLER) $(LINUX_ADDR) $(MEMORY_DEMO)
