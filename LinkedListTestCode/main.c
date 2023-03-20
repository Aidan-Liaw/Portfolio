#include <stdio.h>
#include <stdlib.h>
#include "library.h"
#include "LLFP.h"
extern struct node node;
extern struct addrNode addrNode;
typedef int (*transformationFunc)(int);
typedef int (*foldFuncInt)(int, int);
typedef float (*foldFuncFloat)(float, float);
typedef int (*conditionalFunc)(int);

int doubleNum(int x) { return  2 * x; }
int isEven(int x) { return x % 2 == 0; }

int main() {
    struct node *LLPtr = NULL;
    for (int idx = 1; idx < 7; ++idx) {
        insertFront(&LLPtr, idx);
    }
    traverse(LLPtr);
    struct addrNode *addrLL = *filterLL(&LLPtr, &isEven);
    struct addrNode *addressNode = addrLL;
    while (addressNode != NULL) {
        (*(addressNode->nodeAddr)).num = (addressNode->nodeAddr)->num*2;
        addressNode = addressNode->nextNode;
    }
    traverse(LLPtr);
    addrLLMap(&addrLL, doubleNum);
    traverse(LLPtr);
    conditionalMap(&LLPtr, doubleNum, isEven);
    traverse(LLPtr);

    return 0;
}
