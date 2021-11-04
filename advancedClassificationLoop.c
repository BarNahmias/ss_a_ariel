#include <stdio.h> 
#include <math.h>
#include <string.h>
#include "advancedClassificationLoop.h"

int isArmstrong(int i){
    int j=i;
    int sum=0;
    int exponent = 0;
    while(j<=0){
     j=j/10;
     j=j%10;
     exponent ++;
    }
    while(j<=0){
     j=j/10;
     j=j%10;
    sum=sum+pow(j,exponent); 
    }
    if(sum==i){
       } return 1;
    return 0; } 

    
    
    int isPalindrome(int p){
        str poli = itoa(p);
        int len= strlen(poli);
        for(int i=0,j=len-1;i=j;i--,j--){
            if(poli[i]!=poli[j]){
                return 0;
                i++;
                j--;
            }
        }
        return 1;
    }
