%option noyywrap
%{
    /* Definition section */
    #include<stdio.h>
    #include <math.h>
    int dec=0,i=0,oct,num;
    int num, r, b=0, p=1;
    long long bin =0;
    int num, r, digit=0, count, pcount=0, i;
    char a[20];
%}
  
DIGIT [0-9]
/* Rule Section */
%%
  
{DIGIT}+ { oct=atoi(yytext);
  
        while (oct != 0) {
        num += (oct % 10) * pow(8, i);
        ++i;
        oct /= 10;
    }
    i = 1;
    while(num!=0)
        {
  
            r=num%16;
            digit='0'+r;
            if(digit>'9')
            digit+=7;
            a[count++]=digit;
            num=num/16;
  
        }
  
        for(i=count-1;i>=pcount;--i)
                printf("%c", a[i]);
         
  
			
    
 } 
.|\n    ECHO;
         
%%
  
// driver code
int main()
{
    yylex();
    return 0;
}   