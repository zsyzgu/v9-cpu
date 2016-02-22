#!/bin/sh
rm -f xc xem emhello os0 os1 os2 os3
gcc -o xc -O3 -m32 -Ilinux -Iroot/lib root/bin/c.c
gcc -o xem -O3 -m32 -Ilinux -Iroot/lib root/bin/em.c -lm
./xc -o 4 -Iroot/lib lec1/4.c
./xc -o 2 -Iroot/lib lec1/2.c
./xem 4
./xem 2
