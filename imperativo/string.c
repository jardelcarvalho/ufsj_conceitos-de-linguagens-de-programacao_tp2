#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define total "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#define p "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#define q "abcdefghijklmnopqrstuvwxyz"

char *token = NULL;

void quebra(long max) {
    char *partes = NULL;
    long i = 0;
    while(i != max) {
        char inteira[52] = total;
        partes = strtok(inteira, "a");
        i++;
    }
}

void concatena(long max) {
    char *partes = NULL;
    long i = 0;
    while(i != max) {
        char inteira[52];
        inteira[0] = '\0';
        strcat(inteira, p);
        strcat(inteira, q);
        i++;
    }
}

void tempo_extra(long max) {
    char *partes = NULL;
    long i = 0;
    while(i != max) {
        char inteira[52] = total;
        partes = NULL;
        i++;
    }
}

int main(int argc, char **argv) {
    int opt = atoi(argv[1]);
    long max = atoi(argv[2]);

    switch(opt) {
        case 0:
            quebra(max);                
            break;
        case 1:
            concatena(max);
            break;
        case 2:
            tempo_extra(max);
            break;
        default:
            printf("[]args inválido\n");
            break;
    }

    return 0;
}