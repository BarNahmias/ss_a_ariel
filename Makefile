CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIBL=libclassloops.o
OBJECTS_LIBR=libclassrec.o
FLAGS= -Wall -g


all:  libclassloops.a libclassrec.a libclassrec.so libclassloops.so   mains maindloop maindrec 

mains: $(OBJECTS_MAIN) libclassrec.a 
	$(CC) $(FLAGS) -o progmains $(OBJECTS_MAIN) libclassrec.a
maindloop: $(OBJECTS_MAIN) libclassloops.so 
	$(CC) $(FLAGS) -o progmains $(OBJECTS_MAIN) ./libclassloops.so
maindrec: $(OBJECTS_MAIN) libclassrec.so 
	$(CC) $(FLAGS) -o progmains $(OBJECTS_MAIN) ./libclassrec.so

libclassloops.a: $(OBJECTS_LIBL)
	$(AR) -rcs libclassloops.a $(OBJECTS_LIBL)

libclassrec.a: $(OBJECTS_LIBR)
	$(AR) -rcs libclassloops.a $(OBJECTS_LIBR)

libclassloops.co: $(OBJECTS_LIBL)
	$(CC) -shared -o libclassloops.so $(OBJECTS_LIBL)

libclassrec.co: $(OBJECTS_LIBR)
	$(CC) -shared -o libclassloops.so $(OBJECTS_LIBR)

libclassloops.o: libclassloops.c libclassloops.h
	$(CC) $(FLAGS) -c libclassloops.c

libclassrec.o: libclassrec.c libclassrecs.h
	$(CC) $(FLAGS) -c libclassrec.c

main.o: main.c NumClass.h   
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maindloop maindrec
