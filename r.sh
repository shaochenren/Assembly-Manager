#!/bin/bash

#Program: assignment2 r.sh
#Author: shaochen ren


rm *.o
rm *.out




nasm -f elf64 -o manager.o manager.asm


nasm -f elf64 -o sum.o sum.asm


g++ -c -m64 -Wall -fno-pie -no-pie -o display_array.o display_array.cpp -std=c++17


g++ -c -m64 -Wall -fno-pie -no-pie -o isinteger.o isinteger.cpp -std=c++17


nasm -f elf64 -o input_array.o input_array.asm


nasm -f elf64 -o atol.o atol.asm



gcc -c -Wall -m64 -no-pie -o main.o main.c -std=c18


g++ -m64 -fno-pie -no-pie -o exec.out -std=c++17 main.o manager.o display_array.o  sum.o isinteger.o atol.o input_array.o


 ./exec.out





