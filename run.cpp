#include <iostream>
#include <GL/glut.h>    // OpenGL library for Linux

using namespace std;

#define TELLME 1

int main(int argc, char** argv)
{
    // Initialize GLUT libraries withh argc and argv
    glutInit(argc, argv);

    #if TELLME
    cout << "Successfull end of main" << endl;
    #endif

    return 0;
}