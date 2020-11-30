/* The Gauss calculator
formula file interpreter*/
#define GAUSS_CALCULATOR


#include "API/gauss.h"

#include "cli.h"

int main(int argc, char** argv) {
	if (!argv[1]) {
		NullParamError();
		return 1;

	} else {
		GaussScript(argv[1]);
	}

	return 0;
}