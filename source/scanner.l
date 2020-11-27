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
\*\*                    return POW; 
log                     return LOG;
max                     return MAX;
=                       return END;
exit                    return EXIT;
.                       { /* not matched */ }
%%