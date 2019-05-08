
default: t0 t1 t2 

FLAGS=-Wall -Wextra -pedantic 
CXXFLAGS=$(FLAGS) -std=c++17

t0: t0.c
	$(CC) $(FLAGS) t0.c -o t0

t1: t1.cpp
	$(CXX) $(CXXFLAGS) t1.cpp -o t1

t2: t2.cpp
	$(CXX) $(CXXFLAGS) t2.cpp -o t2 -lstdc++fs

clean:
	rm -f t0 t1 t2
