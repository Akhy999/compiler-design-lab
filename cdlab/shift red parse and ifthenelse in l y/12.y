%{
#include <stdio.h>
#include<stdlib.h>

int yylex();
int yyerror(char *s);

%}

%token II TT EE AA BB OTHER NL

%%

stmts: st NL { printf("Valid String\n"); exit(1); }
;

st: II stc TT st | II stc TT st EE st | AA
;

stc: BB
;

%%

int yyerror(char *s)
{
  printf("Invalid String\n");
  exit(0);
}

int main()
{
    yyparse();
    return 0;
}
