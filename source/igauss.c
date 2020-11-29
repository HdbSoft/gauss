/* The Interactive
Gauss calculator*/
#define INTERACTIVE_GAUSS


#include "API/gauss.h"

#include "cli.h"

int main() {
	char* expression;

	puts("iGauss, the interactive calculator.");
	puts("Build v1.1.0, visit https://github.com/HdbSoft/gauss");
	puts("");

	while (1) {
		printf("iGauss~> ");
		scanf("%s", expression);
		GaussText(expression);
	}

	return 0;
}