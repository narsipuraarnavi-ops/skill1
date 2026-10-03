CC = gcc
CFLAGS = -Wall -g

# Practical 4
WAIT_DEMO = wait_waitpid_demo
ZOMBIE = zombie_process

# Practical 5
PROG5 = prog5
LS_GREP_PIPE = ls_grep_pipe

# Practical 6
FIFO_SERVER = fifo_server
FIFO_CLIENT = fifo_client
SIGNAL_HANDLER = signal_handler

# Practical 7
LINUX_ADDR = prog7_linuxaddr
MEMORY_DEMO = memory_demo

# Practical 8
DYNAMIC_MEMORY = dynamic_memory
COW_DEMO = cow_demo

all:
	$(MAKE) -C Experiment1
	$(MAKE) -C Experiment2
	$(MAKE) -C Experiment3
	$(CC) $(CFLAGS) wait_waitpid_demo.c -o $(WAIT_DEMO)
	$(CC) $(CFLAGS) zombie_process.c -o $(ZOMBIE)
	$(CC) $(CFLAGS) prog5.c -o $(PROG5)
	$(CC) $(CFLAGS) ls_grep_pipe.c -o $(LS_GREP_PIPE)
	$(CC) $(CFLAGS) prog6_fifo_server.c -o $(FIFO_SERVER)
	$(CC) $(CFLAGS) prog6_fifo_client.c -o $(FIFO_CLIENT)
	$(CC) $(CFLAGS) signal_handler.c -o $(SIGNAL_HANDLER)
	$(CC) $(CFLAGS) prog7_linuxaddr.c -o $(LINUX_ADDR)
	$(CC) $(CFLAGS) memory_demo.c -o $(MEMORY_DEMO)
	$(CC) $(CFLAGS) dynamic_memory.c -o $(DYNAMIC_MEMORY)
	$(CC) $(CFLAGS) cow_demo.c -o $(COW_DEMO)

clean:
	$(MAKE) -C Experiment1 clean
	$(MAKE) -C Experiment2 clean
	rm -f Experiment3/prog2
	rm -f $(WAIT_DEMO) $(ZOMBIE) $(PROG5) $(LS_GREP_PIPE)
	rm -f $(FIFO_SERVER) $(FIFO_CLIENT) $(SIGNAL_HANDLER)
	rm -f $(LINUX_ADDR) $(MEMORY_DEMO)
	rm -f $(DYNAMIC_MEMORY) $(COW_DEMO)
