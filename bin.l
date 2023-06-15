%option noyywrap
%{
	#include<stdio.h>
	#include "bin.tab.h"
%}

%%
[01] {return yytext[0];}
[\n] {return 0;}
%%
