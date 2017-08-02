bison -dl calc.y
flex -iL calc.l
gcc calc.c lex.yy.c calc.tab.c -o calc
