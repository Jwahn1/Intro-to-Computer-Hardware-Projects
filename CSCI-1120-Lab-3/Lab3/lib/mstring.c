#include <stdio.h>
#include <string.h>
#include "mstring.h"

void strrev(char* a){
	
	int length = strlen(a);
	char b[length];
	
	
	for(int i = 0; i<length;i++){
		b[i] = a[length-i-1];
	}
	for(int i = 0; i<length;i++){
		a[i] = b[i];
	}
	
}
