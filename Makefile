CFLAGS	= -g
CC	= gcc
OBJ	= myAllocatorTest1 test1 myAllocatorNextFitTest

all: $(OBJ)

myAllocatorTest1: myAllocator.o myAllocatorTest1.o
	$(CC) $(CFLAGS) -o $@ $^

test1: myAllocator.o malloc.o test1.o
	$(CC) $(CFLAGS) -o $@ $^

myAllocatorNextFitTest:nextFitMalloc.o myAllocatorNextFit.o myAllocatorNextFitTest.o
	$(CC) $(CFLAGS) -o $@ $^
clean:
	rm -f *.o $(OBJ) 

