#include <stdio.h>
#include <stdarg.h>

int offset(int* dimensionLengths, int indexes, ...) {
    if (indexes == 0) { printf("Zero indexes inputted"); return -1; }
    va_list idxListPtr;
    va_start(idxListPtr, indexes);
    int idxArr[indexes], offset;

    if (indexes == 1) {
        offset = va_arg(idxListPtr, int);
        va_end(idxListPtr);
        return offset;
    }

    for (int idx = 0; idx < indexes; ++idx) {
        idxArr[idx] = va_arg(idxListPtr, int);
    }

    offset = idxArr[0]*dimensionLengths[1] + idxArr[1];
    for (int idx = 2; idx < indexes; ++idx) {
        offset = offset*dimensionLengths[idx] + idxArr[idx];
    }

    return offset;
}

int main() {
    printf("Hello, World!\n");
    int arr[2][2][4][3], num = 0;
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            for (int k = 0; k < 4; ++k) {
                for (int l = 0; l < 3; ++l) {
                    arr[i][j][k][l] = num;
                    printf("\n[%d][%d][%d][%d] = %d", i, j, k, l, num);
                    num++;
                }
            }
        }
    }
    int arrDimensions[] = {2, 2, 4, 3};
    printf("\n");

    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            for (int k = 0; k < 4; ++k) {
                for (int l = 0; l < 3; ++l) {
                    printf("\n[%d][%d][%d][%d] = %d", i, j, k, l, *((int*)arr + offset(arrDimensions, 4, i, j, k, l)));

                }
            }
        }
    }

    int flatArr[2][4] = {{1, 2, 3, 4}, {5, 6, 7, 8}};
    int arrDimensions2[2] = {2, 4};
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 4; ++j) {
            printf("\n[%d][%d] = %d", i, j, *((int*)flatArr + offset(arrDimensions2, 2, i, j)));
        }
    }

    int arr1D[5] = {1, 2, 3, 4, 5};
    int arrDimensions3[1] ={5};
    for (int i = 0; i < 5; ++i) {
        printf("\n[%d] = %d", i, *((int*)arr1D) + offset(arrDimensions3, 1, i));
    }

    return 0;
}

