%option noyywrap
%{
	#include<stdio.h>
	int even=0,odd=0;
%}

%%
[0-9]+ {if(atoi(yytext)%2==0){
           printf("even");
	   even++;
	 }
	 else{
	   printf("odd");
	   odd++;
	 }
    }
%%
int main()
{
  printf("enter the value\n");
  yylex();
  printf("even count:%d\n",even);
  printf("odd count:%d\n",odd);

	return 0;
}