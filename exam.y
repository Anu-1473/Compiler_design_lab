%{
	#include<stdio.h>
	int yyerror(char *s);
%}
%token c d
%%
A : S {printf("valid");}
S : C C  
C : c C 
C : d
%%
int main()
{

	yyparse();
}
int yyerror(char *s){
 printf("%s",s);
 }