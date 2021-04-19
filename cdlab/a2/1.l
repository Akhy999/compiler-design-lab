%{ 
#include<stdio.h>
int yyerror(char *errormsg);
%}

 

DIGIT [0-9]
KEYWORDS (int|char|else|void|if|while|return)+(" "|"\n")

%%


"if"  {printf("IF\n");}
"else" {printf("ELSE\n");}
"int"  {printf("INT\n");}
"void"  {printf("VOID\n");}
"while" {printf("WHILE\n");}
"return" {printf("RETURN\n");}

(\+|-)({DIGIT}+)(" "|"\n") {printf("An integer number %s\n",yytext);}
({DIGIT})+(\+|-|\/|\.|E)+({DIGIT}+)(" "|"\n") {printf("A REAL number %s token REAL\n",yytext);}
(-|\/|\*|\+)(" "|"\n") {printf("An operator %s\n",yytext);}
(\;\{\,\(\)\[\]\~|\&|\=|\})(" "|"\n") {printf("An operator %s\n",yytext);}
(->)+(" "|"\n") {printf("PTR_OP\n");}
(&&)+(" "|"\n") {printf("AND_OP\n");}
(\|\|)+(" "|"\n") {printf("OR_OP");}
(\.)+(" "|"\n") {printf("DOT_OP");}

 
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
