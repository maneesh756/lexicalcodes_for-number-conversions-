%option noyywrap
%{
    /* Definition section */
    #include<stdio.h>
    long int binarynum, octalnum = 0, j = 1, rem;
    
%}
  
DIGIT [0-9]
/* Rule Section */
%%
  
{DIGIT}+ { binarynum=atoi(yytext);
     while (binarynum != 0)
    {
        rem = binarynum % 10;
        octalnum = octalnum + rem* j;
        j = j * 2;
        binarynum = binarynum / 10;
    }
    printf("Equivalent octal value: %lo", octalnum);
  }
.|\n    ECHO;
         
%%
  
// driver code
int main()
{
    yylex();
    return 0;
}