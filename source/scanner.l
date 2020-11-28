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
asin                    return ASIN;
asinh                   return ASINH;
cos                     return COS;
cosh                    return COSH;
acos                    return ACOS;
acosh                   return ACOSH;
tan                     return TAN;
tanh                    return TANH;
atan                    return ATAN;
atanh                   return ATANH;
=                       return END;
exit                    return EXIT;
.                       { /* not matched */ }
%%