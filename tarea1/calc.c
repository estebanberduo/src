#include <stdio.h>

extern int yyparse();

int main(void)
{
	while (yyparse())
		;
	return 0;
}

int yyerror(void)
{
	puts("Error en la entrada");
	return(1);
}
