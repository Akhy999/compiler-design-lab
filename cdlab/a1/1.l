%{ 
#include<stdio.h>
int yyerror(char *errormsg);
%}

COMMENT "/*".*"*/"+(" "|"\n")
LETTER [_a-zA-Z]+(" "|"\n")
DIGIT [0-9]+(" "|"\n")
ID ([_a-zA-Z]+[_a-zA-Z0-9]*)+(" "|"\n")
OPERATOR [<|<=|=|>|<>|>=] 
KEYWORD (if|then|else|begin|end)+(" "|"\n")
%%
" "|"\t";
{KEYWORD} {printf("%s is a key word\n", yytext);}
{OPERATOR} printf("%s is a Relational operator\n", yytext); 
{LETTER} printf("%s is letter \n",yytext); 
{DIGIT} printf("%s is a integer constant\n", yytext); 
{ID} printf("%s is an identifier\n", yytext); 
{COMMENT} printf("%s  is comment\n",yytext); 

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

