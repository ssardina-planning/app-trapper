TOOLDIR=`pwd | sed 's/src/tools/g'`

CC=gcc

online:

	$(CC) main-trap.c -o pp-online -D__TOOLDIR__="\"$(TOOLDIR)\""

offline:

	$(CC) main.c -o pp-lpg -D__LPG__ -D__SMALL__ -D__TOOLDIR__="\"$(TOOLDIR)\""
	$(CC) main.c -o pp-lmcut_trap -D__LPG__ -D__LMCUT__ -DTRAPS -D__SMALL__ -D__TOOLDIR__="\"$(TOOLDIR)\""
	$(CC) main.c -o pp-lmcut_no_trap -D__LPG__ -D__LMCUT__ -D__SMALL__ -D__TOOLDIR__="\"$(TOOLDIR)\""
	$(CC) main.c -o pp-dfs_trap -D__LPG__ -D__DFS__ -DTRAPS -D__SMALL__ -D__TOOLDIR__="\"$(TOOLDIR)\""
	$(CC) main.c -o pp-dfs_no_trap -D__LPG__ -D__DFS__ -D__SMALL__ -D__TOOLDIR__="\"$(TOOLDIR)\""

clean:
	-rm -f *.o *~ pp-*
