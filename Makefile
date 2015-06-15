SOURCE_FILE = test.c
TARGET = test

TARGET: 
	gcc -g -o ${TARGET} ${SOURCE_FILE} 
.PHONY: clean
clean:
	-rm ${TARGET}

