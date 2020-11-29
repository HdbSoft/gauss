#ifndef __GAUSS_MATH_H__
#define __GAUSS_MATH_H__

#include <math.h>

int hcd(int a, int b) {
    int tmp;
    while (b != 0) {
        tmp = b;
        b = a % b;
        a = tmp;
    }
    return a;
}

int mcm(int a, int b) {
    return (a * b) / hcd(a, b);
}

#endif //gauss math module