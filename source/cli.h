#ifndef __GAUSS_CLI_H__
#define __GAUSS_CLI_H__

void NullParamError() {
	fprintf(
		stderr,
		"Gauss v1.0.0, the scriptable calculator.\n"
		"No options selected, aborting...\n"
		"\n"
		"Usage:\n"
		"$ gauss <file>"
	);
}

#endif //Gauss CLI module