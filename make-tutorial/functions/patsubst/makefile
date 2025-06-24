files := a.o b.o foo.o bar.o main.o

sources_pat := $(patsubst %.o,%.c,$(files))

sources_short1 := $(files:%.o=%.c)

sources_short2 := $(files:.o=.c)

all:
	@echo $(sources_pat)
	@echo $(sources_short1)
	@echo $(sources_short2)
