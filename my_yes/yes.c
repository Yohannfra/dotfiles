/*
    Assouline Yohann
    September 2019
*/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    if (argc == 1) {
        while (1) {
            printf("y\n");
        }
    } else {
        while (1) {
            printf("%s\n", argv[1]);
        }
    }
    return (0);
}
