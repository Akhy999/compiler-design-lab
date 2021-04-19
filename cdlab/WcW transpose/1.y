%{
#include<stdio.h>
int i=0;
%}

 
%token A B C
%glr-parser
%%

S:pal  '\n'   {i=1; return 1 ;}
 | error '\n'   {i=0; return 1 ;}

 

pal: A pal A
   | B pal B
   | C
   
   ;

%%

//#include "lex.yy.c"

int main() {
    yyparse();
    if(i==1) printf("Palindrome\n");
    else     printf("Not Palindrome\n");
    return 0;
}

int yyerror(char* s) { return 0; }
