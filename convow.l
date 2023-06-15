%option noyywrap
%{
	#include<stdio.h>
	int c=0,v=0;
%}

%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int main()
{
 printf("enter the string\n");
   yylex();
   printf("consonents%d",c);
   printf("vowels count%d",v);
	return 0;
}