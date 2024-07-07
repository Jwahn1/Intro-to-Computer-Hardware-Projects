#include <stdio.h>
#include "pascal.h"

void pascal(int pascalnumber){
	int kelement = 0;
	for (int i = 0; i<pascalnumber+1;i++){
		kelement = nchoosepascal(pascalnumber,i); 	
		printf("%d ",kelement);
	}
	printf("\n");
}

int nchoosepascal(int numbera, int numberb){

	long factoriala = 1;
	long factorialb = 1;
	long factorialc = 1;
	int numberc = 0; 

	numberc = numbera - numberb;

	for(int i = numbera; i>=0; i=i-2){
		if(i<2){
			factoriala = factoriala*1;
		}else if(i==2){
			factoriala = factoriala*2;
		}else{
			factoriala = factoriala*i*(i-1);
		}
	}
	for(int i = numberb; i>=0; i=i-2){
		if(i<2){
			factorialb = factorialb*1;
		}else if(i==2){
			factorialb = factorialb*2;
		}else{
			factorialb = factorialb*i*(i-1);
		}
	}
	for(int i = numberc; i>=0; i=i-2){
		if(i<2){
			factorialc = factorialc*1;
		}else if(i==2){
			factorialc = factorialc*2;
		}else{
			factorialc = factorialc*i*(i-1);
		}
	}

	int factorialsum = factoriala/(factorialb*factorialc);
	return factorialsum;
}
