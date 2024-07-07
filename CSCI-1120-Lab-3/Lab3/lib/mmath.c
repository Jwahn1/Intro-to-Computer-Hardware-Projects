#include <stdio.h>
#include "mmath.h"
#include <stdbool.h>

long fact(int number){
	long factorial = 1;
	for(int i = number; i>=0; i=i-2){
		if(i<2){
			factorial = factorial*1;
		}else if(i==2){
			factorial = factorial*2;
		}else{
			factorial = factorial*i*(i-1);
		}
	}
	return factorial;
}

long nchoosek(int numbera, int numberb){

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

bool prime(long number){
	if(number >1){
		if(number == 2){
			return true;
		}if(number % 2 == 0){
			return false;
		}else{
			for(int i =2; i<=number/2;i++){
				if(number%i ==0){
					return false;	
				}
			}
		}
		
	}else{
		return false;
	}
	return true;
}
