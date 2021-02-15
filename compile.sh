#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: ./compile linux"
  echo "Usage: ./compile mac"
else
  os=$1
  file=$2
  if [ "$os" == "mac" ]; then
    g++ "$file" -framework OpenGL -framework GLUT -o "$file".o
  elif [ "$os" == "linux" ]; then
    g++ "$file" -lGL -lGLU -lglut -o "$file".o
  else
    echo "Usage: ./compile linux"
    echo "Usage: ./compile mac"
  fi
fi