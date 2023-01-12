%option noyywrap
%{
    /* Definition section */
    #include<stdio.h>
    int num, r, digit=0, count, pcount=0, i=1,j,q,octalnum;
    int octalNumber[100];
%}
  
DIGIT [0-9]
/* Rule Section */
%%
  
{DIGIT}+ { num=atoi(yytext);
        q=num;
  
        while(q!=0)
        {
  
            octalNumber[i++] =  q% 8;
            q = q / 8;
  
        }
  
        for (j = i - 1; j > 0; j--)
        octalnum = octalnum*10 + octalNumber[j];
         printf("Equivalent octal value  is: %d  ", octalnum);
        }
  
.|\n    ECHO;
         
%%
  
// driver code
int main()
{
    yylex();
    return 0;
} 