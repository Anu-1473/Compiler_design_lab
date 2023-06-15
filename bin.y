%{
	#include<stdio.h>
%}

%%
A : L {printf("%d",n);}
L : B {n=m;}
L : LB {n=n+m;}
B : 0 { m=1}
B : 1 { m=1}
%%
int main()
{

	return 0;
}