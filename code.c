#include <stdio.h>
#include <string.h>

void print_key()
{
	printf("Here you can find the key: https://www.youtube.com/watch?v=dQw4w9WgXcQ");
}

int main(int argv, char* argc[])
{
	printf("Welcome!\n");
	printf("And so you want your rasperry, right?\n");
	printf("Let's see if you deserve it\n");
	printf("\nWhat is the magic word?: ");

	char str[100];
	gets(str);


	if(!strcmp(str, "dlj3eldk3"))
		printf("Well done!\n The code is: 190316\n");
	else
		printf("Not sure mate..\n");

	return 0;
}
