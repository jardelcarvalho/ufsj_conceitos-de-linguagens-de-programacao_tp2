#include <stdio.h>
#include <float.h>
#include <stdlib.h>

double k = DBL_MIN;

void soma(long max) {
    double x = 1, c;
    long i = 0;
    while(i != max) {
        c = x + k;
        i++;
    }
}

void sub(long max) {
    double x = 1, c;
    long i = 0;
    while(i != max) {
        c = x - k;
        i++;
    }
}

void mult(long max) {
    double x = 1, c;
    long i = 0;
    while(i != max) {
        c = x * k;
        i++;
    }
}

void divi(long max) {
    double x = 1, c;
    long i = 0;
    while(i != max) {
        c = x / k;
        i++;
    }
}

void tempo_extra(long max) {
    double x = 1, c;
    long i = 0;
    while(i != max) {
        c = 0;
        i++;
    }
}

int main(int argc, char **argv) {
    int opt = atoi(argv[1]);
    long max = atoi(argv[2]);

    switch (opt) {
        case 0:
            soma(max);
            break;
        case 1:
            sub(max);
            break;
        case 2:
            mult(max);
            break;
        case 3:
            divi(max);
            break;
        case 4:
            tempo_extra(max);
            break;
        default:
            printf("**argc inválido\n");
            break;
    }

    return 0;
}