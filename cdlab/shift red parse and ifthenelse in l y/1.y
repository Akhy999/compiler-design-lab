%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token NUM
%left '+' '-'
%left '*' '/'
%left '(' ')'
%right '^'
%%
expr: e{
         printf("result:%d\n",$$);
         return 0;
        }
e:e'+'e {$$=$1+$3;}
 |e'-'e {$$=$1-$3;}
 |e'*'e {$$=$1*$3;}
 |e'/'e {$$=$1/$3;}
 |'('e')' {$$=$2;}
 |e'^'e {$$=power($1,$3);}
 | NUM {$$=$1;}
;
%%

main()
{
   printf("\n enter the arithematic expression:\n");
   yyparse();
   printf("\nvalid expression\n");
}
yyerror()
{
   printf("\n invalid expression\n");
   exit(0);
}
int power(int x,int y)
{
	int i,ans=1;
	for(int i=0;i<y;i++)
	ans=ans*x;
	return ans;
}
