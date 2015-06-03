SOURCE_FILE = test.c
OBJECT_FILE= test.o
TARGET = test

TARGET:${OBJECT_FILE} 
	gcc -o ${TARGET} ${OBJECT_FILE} 
OBJECT_FILE: ${SOURCE_FILE} 
	gcc -c ${SOURCE_FILE} 
.PHONY: clean
clean:
	-rm ${OBJECT_FILE} ${TARGET}

