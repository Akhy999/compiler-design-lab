%{
#include<stdio.h>
int yyerror(char *errormsg);
%}

SPECIALCHAR [!@#$&*_]
LETTER [a-zA-Z] 
DIGIT [0-9]

%%
[" "|"\t"]   {printf("Uknown character");}
[!@#$&*_][a-zA-Z0-9]*+"\n"	{printf("%s is Token1\n",yytext);}
[0-9][!@#$&*_a-zA-Z]"\n"	{printf("%s is Token2\n",yytext);}
([a-zA-Z]+[a-zA-Z0-9!@#$&*_]*+[a-zA-Z]|[a-zA-Z]*)+"\n"        {printf("this is Token3\n",yytext);}
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
