#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main()
{
	char *string = NULL ;
	char *abc = "abc";
	
	string = malloc( strlen(abc)+1);
	strcpy( string, abc);

}
