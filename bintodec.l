%option noyywrap
%{
    /* Definition section */
    #include<stdio.h>
    int num, rem,decimal_num=0,base=1;
    
%}
  
DIGIT [0-9]
/* Rule Section */
%%
  
{DIGIT}+ { num=atoi(yytext);
        while ( num > 0)  
    {  
        rem = num % 10; /* divide the binary number by 10 and store the remainder in rem variable. */  
        decimal_num = decimal_num + rem * base;  
        num = num / 10; // divide the number with quotient  
        base = base * 2;  
    } 
    printf (" \n The decimal number is %d \t", decimal_num);
    }
  
.|\n    ECHO;
         
%%
  
// driver code
int main()
{   printf("enter the binary number to get the decimal number:");
    yylex();
    return 0;
}