Target	:= run
Ext		:= .exe
Source	:= $(Target).cpp
CFlags	:= -std=c++11 -Wall -Werror 
Links	:= -lglut -lGL -lGLU
CC		:= g++

$(Target)$(Ext): $(Source)
	$(CC) $(CFlags) $^ -o $@ $(Links) 

clean:
	rm -f $(Target)

run: $(Target)
	./$(Target)