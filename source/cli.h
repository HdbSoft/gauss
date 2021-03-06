#ifndef __GAUSS_CLI_H__
#define __GAUSS_CLI_H__

void Error(char* msg) {
	fprintf(stderr, "%s\n", msg);
}
//Error function

void NullParamError() {
	Error (
		"Gauss v1.0.0, the scriptable calculator.\n"
		"No options selected, aborting...\n"
		"\n"
		"Usage:\n"
		"$ gauss <file>\n"
	);
}

#endif //Gauss CLI module