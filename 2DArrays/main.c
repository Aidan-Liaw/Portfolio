#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {

    int columnNo = 100, rowNo = 5;
    char (*contigArr)[columnNo] = malloc(sizeof (*contigArr) * rowNo + 2);

    for (int idx = 0; idx < rowNo; ++idx) {
        scanf("%s", contigArr[idx]);
    }

    for (int idx = 0; idx < rowNo; ++idx) {
        printf("\n%s", contigArr[idx]);
    }
    free(contigArr);
    printf("\n");

    char **jaggedArr = (char **) malloc(rowNo * sizeof(char *));
    char *temp = malloc(0);
    for (int idx = 0; idx < rowNo; ++idx) {
        scanf("%s", temp);
        jaggedArr[idx] = (char *) malloc(sizeof(char) * (strlen(temp) + 1));
        strcpy(jaggedArr[idx], temp);
    }

    for (int idx = 0; idx < rowNo; ++idx) {
        printf("\n%s", jaggedArr[idx]);
        free(jaggedArr[idx]);
    }
    free(jaggedArr);

    return 0;
}
