LDFLAGS   = -g
CFLAGS    = -Wall -Wextra -Werror -ggdb -std=gnu11

.PHONY: all
all: tmup

tmup: main.o
	gcc -o $@ $^ $(LDFLAGS)

main.o:	main.c main.h
	gcc -c $< $(CFLAGS)

.PHONY: clean
clean:
	-rm -f *.o tmup
