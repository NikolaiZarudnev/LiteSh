all:
	gcc -o build/cookie.o -c -fPIC src/cookie.c
	gcc -shared -o libcookies.so build/cookie.o

	gcc -o build/server.o -c src/server.c
	gcc -o bin/client src/client.c
	gcc -o bin/LiteSH build/server.o -L. -lcookies -ldl -pthread

clean:
	rm build/*
	rm bin/*