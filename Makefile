FLAGS  = -Wall -g
CC     = gcc
PROG   = server
OBJS   = semlib.o tcp_server.o

all:	${PROG}

clean:
	rm ${OBJS} ${EXE} *~
  
${PROG}:	${OBJS}
	${CC} ${FLAGS} ${OBJS} -o $@

.c.o:
	${CC} ${FLAGS} $< -c

##########################

semlib.o:  semlib.h semlib.c

tcp_server.o: semlib.h tcp_server.c

server: tcp_server.o semlib.o

