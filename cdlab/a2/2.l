%{ 
#include<stdio.h>
int yyerror(char *errormsg);
%}

 

A [ab]*[cd]*
E [a][b]*[c]*[d]
B [01]*
c [0]*[1]*
D ([0][1]*[2]|[0]*[2]|[1])

%%
{A}+{E}(" "|"\n") {printf("String pattern valid for given RE-1: %s\n",yytext);}
({B}+|{E})(" "|"\n") {printf("String pattern valid for given RE-2: %s\n",yytext);}
{D}(" "|"\n")    {printf("String pattern valid for given RE-3: %s\n",yytext);}
.	{yyerror("Unknown character");}
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
