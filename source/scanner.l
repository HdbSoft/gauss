%option noyywrap
%{
    #include <stdlib.h>
	#include "y.tab.h"
    void yyerror(char* s);
%}

%x COMMENT

%%
"/*"            		BEGIN(COMMENT);
<COMMENT>.
<COMMENT>"\n"   
<COMMENT>"*/"   		BEGIN(INITIAL);
" "
"\n"

[0-9]+(\.[0-9]+)?       { yylval.d= (double) atof(yytext); return VAL; }
[+*/)(\n,-]             return * yytext; 
\^                      return POW;
sqrt                    return SQRT; 
log                     return LOG;
exp                     return EXP;
max                     return MAX;
sin                     return SIN;
sinh                    return SINH;
cos                     return COS;
cosh                    return COSH;
tan                     return TAN;
tanh                    return TANH;
=                       return END;
exit                    return EXIT;
.                       { /* not matched */ }
%%