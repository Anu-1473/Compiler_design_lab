%option noyywrap
%{
	#include<stdio.h>
	int i=0,r=0;
%}

%%
[-]?[0-9]+ { printf("integer"); i++;}
[-]?[0-9]+[\.][0-9]+ {r++;}
%%
int main()
{
  printf("enter the numbers\n");
  yylex();
  printf("integer count%d\n",i);
  printf("realnumber count%d\n",r);
	return 0;
}