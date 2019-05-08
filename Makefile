
default: t0 t1 t2 

t0: t0.c
	$(CC) -Wall -Wextra -pedantic t0.c -o t0

t1: t1.cpp
	$(CXX) -std=c++17 -Wall -Wextra -pedantic t1.cpp -o t1

t2: t2.cpp
	$(CXX) -std=c++17 -Wall -Wextra -pedantic t2.cpp -o t2 -lstdc++fs

clean:
	rm -f t0 t1 t2
