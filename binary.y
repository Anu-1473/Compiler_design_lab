
%{
	#include<stdio.h>
	#include<math.h>
	int yyerror(char *s);
	int val=0;
	int k=0;
%}
%token id1 id2
%%
A : S {printf("%d",val);}
S : id1 S { k++;};
S : id2 S {val=val+pow(2,k); k++;}
S :  ; 
%%
int main()
{

	yyparse();
}
int yyerror(char *s){
   printf("%s",s);
}