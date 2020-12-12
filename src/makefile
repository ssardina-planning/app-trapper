TOOLDIR=`pwd | sed 's/src/tools/g'`

CC=gcc

online:

	$(CC) main-trap.c -o pp-online -D__TOOLDIR__="\"$(TOOLDIR)\""

clean:
	-rm -f *.o *~ pp-online pp-offline
