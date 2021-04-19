%{
#include<stdio.h>
int yyerror(char *errormsg);
%}

%%
aa {printf("5");}
b?a+b?  {printf("6");}
b?a*b+  {printf("7");}
.|'\n'  {printf("8");}
%%

int yywrap()
{return 1;}

int main(void)
{yylex();return 0;}

int yyerror(char *errormsg)
{
fprintf(stderr, "%s\n",errormsg);
exit(1);
}
