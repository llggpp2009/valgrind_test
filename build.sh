#!/bin/bash

TARGET=./test
LOG_FILE=%p_log.memcheck
XML_FILE=%p_log.memcheck

make
valgrind --tool=memcheck --leak-check=full --log-file=${LOG_FILE} --xml=yes --xml-file=${XML_FILE} --show-reachable=yes --track-origins=yes ${TARGET}   
make clean
