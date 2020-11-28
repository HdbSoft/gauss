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
ln                      return LN;
log                     return LOG;
log2                    return LOG2;
exp                     return EXP;
max                     return MAX;
abs                     return ABS;
ceil                    return CEIL;
floor                   return FLOOR;
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