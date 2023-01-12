%option noyywrap
%{
    /* Definition section */
    #include<stdio.h>
    #include <math.h>
    int dec=0,i=0,oct,num;
    int num, r, b=0, p=1;
    long long bin =0;
    char a[20];
%}
  
DIGIT [0-9]
/* Rule Section */
%%
  
{DIGIT}+ { oct=atoi(yytext);
  
        while (oct != 0) {
        dec += (oct % 10) * pow(8, i);
        ++i;
        oct /= 10;
    }
    i = 1;

  
			printf("%d", dec);
    
 } 
.|\n    ECHO;
         
%%
  
// driver code
int main()
{
    yylex();
    return 0;
}   