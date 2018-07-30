# Executable name
Target	:= run
# Linux executable extension
Ext		:= .e
# Window excecutable extension
WExt	:= .exe
Source	:= $(Target).cpp
CFlags	:= -std=c++11 -Wall -Werror
Links	:= -static-libgcc -static-libstdc++
# Linux graphics libraries 
GLinks	:= -lglut -lGL -lGLU
CC		:= g++
# Window executable compiler
WCC		:= x86_64-w64-mingw32-g++

all: $(Target)$(Ext) $(Target)$(WExt)

$(Target)$(Ext): $(Source)
	$(CC) $(CFlags) $^ -o $@ $(GLinks) 

$(Target)$(WExt): $(Source)
	$(WCC) $(CFlags) -o $@ $^ $(Links)

clean:
	rm -f $(Target)$(Ext) $(Target)$(WExt)

run: all
	./$(Target)$(Ext)
