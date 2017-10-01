objects = main.o http_conn.o
server : $(objects)
	g++ -o server $(objects) -lpthread
main.o : locker.h threadpool.h http_conn.h

.PHONY : clean 
clean : 
	-rm $(objects)
