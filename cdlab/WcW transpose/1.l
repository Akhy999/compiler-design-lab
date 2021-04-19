%{
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
%}

%option noyywrap

%%
a    return A;
b    return B;
c     return C;
\n   return '\n';
.    {fprintf(stderr, "Error\n"); exit(1);}

%%
