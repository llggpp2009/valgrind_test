#!/bin/bash

LOG_FILE=%p_log.memcheck
TARGET=./test
#XML_FILE=%p_log.memcheck

make
valgrind --tool=memcheck --leak-check=full --log-file=${LOG_FILE} --show-reachable=yes --track-origins=yes ${TARGET}   
#valgrind --tool=memcheck --xml=yes --xml-file=${XML_FILE} --show-reachable=yes --track-origins=yes ${TARGET}   
#valgrind --xml=yes --xml-file=${XML_FILE} --show-reachable=yes --track-origins=yes ${TARGET}   
#valgrind --xml=yes --xml-file=${XML_FILE} ${TARGET}   
make clean
