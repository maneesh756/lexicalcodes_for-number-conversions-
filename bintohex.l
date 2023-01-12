%option noyywrap
%{
    /* Definition section */
    #include<stdio.h>
    long int binaryval, hexadecimalval = 0, i = 1, rem;
    
%}
  
DIGIT [0-9]
/* Rule Section */
%%
  
{DIGIT}+ { binaryval=atoi(yytext);
      while (binaryval != 0)
    {
        rem = binaryval % 10;
        hexadecimalval = hexadecimalval + rem * i;
        i = i * 2;
        binaryval = binaryval / 10;
    }
    printf("Equivalent hexadecimal value: %lX", hexadecimalval);
  }
.|\n    ECHO;
         
%%
  
// driver code
int main()
{
    yylex();
    return 0;
}