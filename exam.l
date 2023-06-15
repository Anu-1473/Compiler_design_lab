%option noyywrap
%{
	#include<stdio.h>
	#include "exam.tab.h"
%}

%%
[c] {return c;}
[d] {return d;}
%%
