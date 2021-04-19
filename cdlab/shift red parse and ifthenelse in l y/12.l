%{

#include <stdio.h>
#include <string.h>
#include<stdlib.h>
#include "y.tab.h"
void showError();
%}


%%

"i"		   {return (II);}
"t"		   {return (TT);}
"e"		   {return (EE);}
"b"		   {return (BB);}
"a"		   {return (AA);}
"\n"		{ return (NL); }
.      		     {showError(); return(OTHER);}


%%

 int yywrap() 
 {  return -1;  }  


void showError(){
    printf("Other input\n");
    exit(0);
}
