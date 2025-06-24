.PHONY: all clean
OS := $(shell uname)

ifeq ($(OS), Linux)
	target := target.o
else
	target := target.out
endif

objects := foo.o anark.o

$(target): $(objects)
	$(CC) $^ -o $@

$(objects): %.o : %.c

anark.c:
	echo "int main(){return 0;}" > $@

%.c:
	touch $@

clean:
	rm -r *.c *.o 
