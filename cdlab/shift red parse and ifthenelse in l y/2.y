%{
        #include<stdio.h>
%}

%token a b
%left 'i' 't' 'e'

%%

stmt:S {printf("Statement belongs to this grammer\n");  }

S:'i'C't'S {}
 |'i'C't'S'e'S {}
 |S1 {}

S1:a {}

C:b {}
 ;

%%

main()
{
        printf("Enter statement for the grammer\n");
        yyparse();
}

yyerror()
{
        printf("Invalid Statement\n");
	return 0;
}
