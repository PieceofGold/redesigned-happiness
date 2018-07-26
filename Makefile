Target	:= run
Source	:= $(Target).cpp
CFlags	:= -std=c++11 -Wall -Werror 
Links	:= -lglut -lGL -lGLU
CC		:= g++

$(Target): $(Source)
	$(CC) $(CFlags) $^ -o $@ $(Links) 

clean:
	rm -f $(Target)

run: $(Target)
	./$(Target)