%option noyywrap
%{
	#include<stdio.h>
	#include "binary.tab.h"
%}

%%
[0] {yylval= atoi(yytext); return id1;}
[1] {yylval=atoi(yytext); return id2;}
%%
