%option noyywrap
%{
	#include<stdio.h>
%}

%%
[\naA] {if(count(yytext)==3){
         printf("%s",yytext);}
	}
%%
int count(char c[]){
int n=0,i=0;
while(c[i]!='\0'){
  n++;
  i++;
 }
 return n;
}
int main()
{
        yylex();
	return 0;
}