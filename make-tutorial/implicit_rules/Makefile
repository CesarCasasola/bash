#Forma eficiente con Reglas de patron estatico
CC=gcc

objects := foo.o bar.o all.o
#Se aplican implicit rules para la generacion de all
all: $(objects)


#Sintaxis-> target: target-pattern: prereq-pattern
#Para cada target, se busca hacer match con el target-pattern y el stem
#se reemplaza en la parte de prerrequisitos.
#Ejemplo foo.o: 'foo'.o: 'foo'.c
$(objects): %.o: %.c

all.c:
	echo "int main(){return 0;}" > all.c

%.c:
	touch $@

clear:
	rm -f *.c *.o all
