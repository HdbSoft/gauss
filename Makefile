# Gauss Makefile
#
# Usage:
# $ make install, tests, ccode, dependencies
output:
	@make ccode
	@gcc source/gauss.c -o bins/gauss
	@gcc source/igauss.c -o bins/igauss

install:
	@make
	@mv bins/gauss /bin/
	@mv bins/igauss /bin/

tests:
	@./bins/gauss tests/addition.math
	@./bins/gauss tests/substraction.math
	@./bins/gauss tests/multiplication.math
	@./bins/gauss tests/division.math
	@./bins/gauss tests/exponentiation.math
	@./bins/gauss tests/trigonometry.math
	@./bins/gauss tests/functions.math

ccode:
	@bison -d source/API/parser.y -o source/API/y.tab.c
	@flex -o source/API/lex.yy.c source/API/scanner.l

dependencies:
	@apt-get update
	@apt-get install flex
	@apt-get install bison
	@apt-get install libc-dev