INSTALLDIR=/home/andre/local
CC = gcc
CFLAGS=-g

all:fib.o
	$(CC) -o fib fib.o

c.o:
	$(CC) $(CFLAGS) -c $<

install:
	mkdir -p $(DESTDIR)/$(INSTALLDIR)/usr/bin
	cp fib $(DESTDIR)/$(INSTALLDIR)/usr/bin
	chmod 755 $(DESTDIR)/$(INSTALLDIR)/usr/bin/fib

clean:
	rm -f fib.o fib
