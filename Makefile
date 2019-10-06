
CC = gcc
CFLAGS = -lpthread -I.
LD_FLAGS =
DEPS = $(wildcard *.h)
OBJ = $(patsubst %.c,%.o,$(wildcard *.c))
TARGET1 = singlyLinkedList.out
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: $(TARGET1)

$(TARGET1): singlyLinkedList.o
	$(CC) $(LD_FLAGS) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(TARGET1) *.o *~ core
