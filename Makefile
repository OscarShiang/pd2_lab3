OBJ = lab3_b.o Clock.o

all: lab3_a lab3_b

lab3_b: $(OBJ)
	g++ -o lab3_b $(OBJ)
lab3_a: lab3_a.cpp
	g++ -o lab3_a lab3_a.cpp
lab3_b.o: lab3_b.cpp
	g++ -c lab3_b.cpp
Clock.o: Clock.cpp
	g++ -c Clock.cpp
format:
	astyle --style=google --indent=spaces=4 --suffix=none *.h
	astyle --style=google --indent=spaces=4 --suffix=none *.cpp
clean:
	rm *.o lab3_b lab3_a
