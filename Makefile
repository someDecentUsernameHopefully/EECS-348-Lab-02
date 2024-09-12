all: main.o isEven.o isOdd.o
	gcc -o driver main.o isEven.o isOdd.o -Wall

main.o: main.c isEven.h isEven.c
	gcc -c main.c isEven.h isOdd.h -Wall

isEven.o: isEven.h isEven.c
	gcc -c isEven.h isEven.c -Wall

isOdd.o: isOdd.h isOdd.c
	gcc -c isOdd.h isOdd.c -Wall