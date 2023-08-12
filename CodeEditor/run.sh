#!/bin/sh
gcc -w program.c -o Project `pkg-config --cflags --libs gtk+-3.0` -export-dynamic
