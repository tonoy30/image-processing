#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: ./compile linux"
  echo "Usage: ./compile mac"
else
  os=$1
  if [ "$os" == "mac" ]; then
    g++ bresenham_line.cpp -framework OpenGL -framework GLUT -o bresenham_line.o
  elif [ "$os" == "linux" ]; then
    g++ main.cpp -lGL -lGLU -lglut -o main.o 
  else
    echo "Usage: ./compile linux"
    echo "Usage: ./compile mac"
  fi
fi