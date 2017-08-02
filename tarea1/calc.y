%{
#include <stdio.h>
%}

%token NUM

%left '+' '-'
%left '*' '/'

%%

list	:
	|	list stat '\n'
	|	list error '\n' { yyerrok; }
	;

stat	:	expr    { printf("%d\n", $1); }
	;

expr	:	'(' expr ')'	{ $$ = $2; }
	|	expr '+' expr	{ $$ = $1 + $3; }
	|	expr '-' expr	{ $$ = $1 - $3; }
	|	expr '*' expr	{ $$ = $1 * $3; }
	|	expr '/' expr	{ $$ = $1 / $3; }
	|	NUM		{ $$ = yylval; }
	;
