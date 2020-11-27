# Gauss Makefile
#
# Usage:
# $ make ccode, dependencies
output:
	@bison -d source/parser.y
	@mv parser.tab.h y.tab.h
	@flex source/scanner.l
	@gcc lex.yy.c parser.tab.c -o gauss -lm

ccode:
	@bison -d source/parser.y
	@mv parser.tab.h y.tab.h
	@flex source/scanner.l

dependencies:
	@apt-get update
	@apt-get install flex
	@apt-get install bison
	@apt-get install libc-dev