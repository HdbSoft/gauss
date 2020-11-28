%{
	#include <stdlib.h>
	#include <stdio.h>
	#include "math.h"

	#include "cli.h"

	int yylex();
	void yyerror(char * s);
	extern FILE* yyin;
%}

%union {
    double d;
}

%start calc
%token VAL MAX END EXIT
%left '-' '+'
%left '*' '/'
%right POW LOG SIN SINH COS COSH TAN TANH
%nonassoc '(' ')'
%right NEG
%type<d> exp max_params
	
%%

calc            : root EXIT { }

root            : instruction { }
                | root instruction { }
                ;

instruction     : exp END                   { printf("%f\n", $<d>1); }

exp             : VAL                       { $$ = $<d>1; }             
                | exp '+' exp               { $$ = $<d>1 + $<d>3; }
                | exp '-' exp               { $$ = $<d>1 - $<d>3; }
                | exp '/' exp               { $$ = $<d>1 / $<d>3; }
                | exp '*' exp               { $$ = $<d>1 * $<d>3; }
                | exp POW exp               { $$ = pow($<d>1, $<d>3); }
                | LOG exp                   { $$ = log($<d>2); }
                | SIN exp                   { $$ = sin($<d>2);  }
                | SINH exp                  { $$ = sinh($<d>2); }
                | COS exp                   { $$ = cos($<d>2);  }
                | COSH exp                  { $$ = cosh($<d>2); }
                | TAN exp                   { $$ = tan($<d>2);  }
                | TANH exp                  { $$ = tanh($<d>2); }
                | '-' exp %prec NEG         { $$ = -$<d>2; }
                | '(' exp ')'               { $$ = $<d>2; }
                | MAX '(' max_params ')'    { $$ = $<d>3; }
                | error
                ;

max_params      : exp                       { $$ = $<d>1; }
                | max_params ',' exp        { $$ = ($<d>1 > $<d>3) ? $<d>1 : $<d>3; }
                ;

%%

void yyerror(char* s) {
	fprintf(stderr, "%s \n", s);
}

int main(int argc, char** argv) {
	if (!argv[1]) {
		NullParamError();
		return 1;
	}

	yyin = fopen(argv[1], "r");
	yyparse();    
	fclose(yyin);
	return 0;
}