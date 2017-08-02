%{
#include <stdio.h>
#include <stdlib.h>
#include "calc.tab.h"

extern YYSTYPE yylval;

%}

number  [0-9]
op      [\+\-\*\\]

%%

{number}+	{ yylval = atoi(yytext); return(NUM); }
{op}		{ return(yytext[0]); }
\n		{ return('\n'); }

%%

int yywrap(void)
{
	return 1;
}
