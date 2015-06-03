#!/bin/bash

TARGET="test"
LOG_FILE="mem.log"
XML_FILE=test.memcheck

make
valgrind --tool=memcheck --leak-check=full --xml=yes --xml-file=${XML_FILE} --show-reachable=yes --track-origins=yes ${TARGET}   
make clean
