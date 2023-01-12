

%option noyywrap
%{
    /* Definition section */
    #include<stdio.h>
    #include <math.h>
    #include <string.h>
    int decimalnumber, place;
    int i = 0, val, len;
    int dec = 0;
    char hex[17];
%}
  
DIGIT [A-Fa-f0-9]

%%
  
{DIGIT}+ { 
              strcpy(hex, yytext);
       len = strlen(hex);
      while(hex[i]){
     if(hex[i]>='a'&&hex[i]<='f'){
         dec=dec+(hex[i]-'a'+10)*pow(16,len-i-1);
     }
     else if(hex[i]>='A'&&hex[i]<='F'){
         dec=dec+(hex[i]-'A'+10)*pow(16,len-i-1);
     }
     else{
         dec+=(hex[i]-'0')*pow(16,len-i-1);
     }
     i++;
 }

    printf("%d",dec);
			    
 } 
.|\n    ECHO;
         
%%
  
// driver code
int main()
{
    printf("Enter a Hexadecimal Number\n");  
    yylex();
    return 0;
} 