# Gauss Makefile
#
# Usage:
# $ make tests, ccode, dependencies
output:
	@cp source/cli.h cli.h
	@bison -d source/parser.y
	@mv parser.tab.h y.tab.h
	@flex source/scanner.l
	@gcc lex.yy.c parser.tab.c -o gauss -lm
	@mv parser.tab.c bins/parser.tab.c
	@mv y.tab.h bins/y.tab.h
	@mv lex.yy.c bins/lex.yy.c
	@mv gauss bins/gauss
	@rm cli.h

tests:
	@./gauss tests/addition.math
	@./gauss tests/substraction.math
	@./gauss tests/multiplication.math
	@./gauss tests/division.math
	@./gauss tests/exponentiation.math

ccode:
	@bison -d source/parser.y
	@mv parser.tab.h y.tab.h
	@flex source/scanner.l

dependencies:
	@apt-get update
	@apt-get install flex
	@apt-get install bison
	@apt-get install libc-dev