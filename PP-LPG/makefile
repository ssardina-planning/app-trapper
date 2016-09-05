#NAME = pp-debug
#NAME = pp-adapt
#NAME = pp-adapt-rand
#NAME = pp-noadapt
#NAME = pp-nopref-lpg
#NAME = pp-nopref-lama
#NAME = pp-lama
#NAME = pp-lama-large
#NAME = pp-lama-debug
NAME = pp-lpg
#NAME=pp-hplanp
#NAME=pp-nopref-hplanp

SOURCES = main.c
OBJECTS = $(SOURCES:.c=.o)

###ottimizzazioni in compilazione###
#CC_OPTS  = -c -O3 -D__LPG__ -fstrength-reduce -ffast-math -D__SMALL__ 
#CC_OPTS  = -c -O3 -D__LPG__ -fstrength-reduce -ffast-math -D__NOPREF__ -D__SMALL__ 
CC_OPTS  = -c -g -D__LPG__ -D__SMALL__ # LPG CON PREFERENZE
#CC_OPTS  = -c -g  -D__LPG__ -D__NOPREF__ -D__SMALL__ # LPG SENZA PREFERENZE
#CC_OPTS  = -c -g  -D__LPG__ # LPG CON PREFERENZE per problemi di grandi dimensioni 
#CC_OPTS  = -c -g  -D__LPG__ -D__ADAPT__ # LPG CON PREFERENZE E ADATTAMENTO
#CC_OPTS  = -c -g  -D__LPG__ -D__ADAPT__ -D__SMALL__ # LPG CON PREFERENZE E ADATTAMENTO
#CC_OPTS  = -c -g -D__LAMA__ -D__SMALL__ 
#CC_OPTS  = -c -g -D__LAMA__
#CC_OPTS  = -c -g  -D__NOPREF__ -D__LAMA__ -D__SMALL__  # LAMA SENZA PREFERENZE

#CC_OPTS  = -c -g -D__HPLANP__ -D__SMALL__ # HPLANP CON PREFERENZE
#CC_OPTS  = -c -g -D__HPLANP__ -D__NOPREF__ -D__SMALL__ # HPLANP CON PREFERENZE

$(NAME): $(OBJECTS)
	$(CC) -o $(NAME) $(OBJECTS)

%.o: %.c
	$(CC) $(CC_OPTS) $<

clean:
	-rm -f *.o *~ $(NAME)
