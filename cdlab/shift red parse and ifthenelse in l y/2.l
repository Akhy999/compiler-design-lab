%{
#include<stdio.h>
#include"y.tab.h"
extern int yylval;
%}
%option noyywrap
%%
[a] {
        yylval = atoi(yytext);
        return a;
   }
[b] {
        yylval = atoi(yytext);
        return b;
   }
[i] {return 'i';}
[t] {return 't';}
[e] {return 'e';}
[\t];
[\n] return 0;
. return yytext[0];

%%

int yywrap()
{
        return 1;
}
