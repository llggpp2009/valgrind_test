#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main()
{
	char *string = NULL ;
	char *abc = "abc";
	
	string = malloc( strlen(abc)+1);
	strcpy( string, abc);

	char *x = (char*)malloc(20);
	char *y = (char*)malloc(20);
	x=y;
	free(x);
	free(y);
	char * aaa = malloc(100);

	return 0;
}
