#print: $(wildcard *.c)
#	ls -la $?

thing_wrong = *.c
thing_right = $(wildcard *.c)
files = one two three four

all: ${files}

one: $(thing_wrong)

two: *.c

three: $(thing_right)

four: $(wildcard *.c)
