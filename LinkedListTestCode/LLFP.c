#include <stdio.h>
#include <stdlib.h>
#include "LLFP.h"
#include "library.h"
extern struct node node;
typedef int (*transformationFunc)(int);
typedef int (*foldFuncInt)(int, int);
typedef float (*foldFuncFloat)(float, float);
typedef int (*conditionalFunc)(int);

struct addrNode;

// Works
void map(struct node **LL, transformationFunc tFunc) {
    struct node *currentNode = *LL;
    while (currentNode != NULL) {
        currentNode->num = tFunc(currentNode->num);
        currentNode = currentNode->nextNode;
    }
}

// Works
void conditionalMap(struct node **LL, transformationFunc tFunc, conditionalFunc cFunc) {
    struct node *currentNode = *LL;
    while (currentNode != NULL) {
        if (cFunc(currentNode->num)) {
            currentNode->num = tFunc(currentNode->num);
        }
        currentNode = currentNode->nextNode;
    }
}

// Works
void addrLLMap(struct addrNode **addrLL, transformationFunc tFunc) {
    struct addrNode *addressNode = *addrLL;
    while (addressNode != NULL) {
        (*(addressNode->nodeAddr)).num = tFunc((addressNode->nodeAddr)->num);
        addressNode = addressNode->nextNode;
    }
}

// Works
int foldIntLTR(struct node *LL, foldFuncInt fFuncInt) {
    struct node *currentNode = LL;
    if (currentNode == NULL || currentNode->nextNode == NULL) {
        printf("Linked list contains less than two nodes.");
        return -1;
    }
    int result = fFuncInt(currentNode->num, currentNode->nextNode->num);
    currentNode = currentNode->nextNode->nextNode;
    while (currentNode != NULL) {
        result = fFuncInt(result, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return result;
}

// Works
float foldFloatLTR(struct node *LL, foldFuncFloat fFuncFloat) {
    struct node *currentNode = LL;
    if (currentNode == NULL || currentNode->nextNode == NULL) {
        printf("Linked list contains less than two nodes.");
        return -1;
    }
    float result = fFuncFloat((float) currentNode->num,
                            (float) currentNode->nextNode->num);
    currentNode = currentNode->nextNode->nextNode;
    while (currentNode != NULL) {
        result = fFuncFloat(result, (float) currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return result;
}

// Works
int foldIntRTL(struct node *LL, foldFuncInt fFuncInt) {
    struct node *currentNode = *reverseLL(LL);
    if (currentNode == NULL || currentNode->nextNode == NULL) {
        printf("Linked list contains less than two nodes.");
        return -1;
    }
    int result = fFuncInt(currentNode->num, currentNode->nextNode->num);
    currentNode = currentNode->nextNode->nextNode;
    while (currentNode != NULL) {
        result = fFuncInt(result, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return result;
}

// Works
float foldFloatRTL(struct node *LL, foldFuncFloat fFuncFloat) {
    struct node *currentNode = *reverseLL(LL);
    if (currentNode == NULL || currentNode->nextNode == NULL) {
        printf("Linked list contains less than two nodes.");
        return -1;
    }
    float result = fFuncFloat((float) currentNode->num,
                              (float) currentNode->nextNode->num);
    currentNode = currentNode->nextNode->nextNode;
    while (currentNode != NULL) {
        result = fFuncFloat(result, (float) currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return result;
}

// Works
struct node **filterNewLL(struct node **LL, conditionalFunc cFunc) {
    struct node *currentNode = *LL;
    struct node **LLPtr = malloc(0);
    (*LLPtr) = NULL;
    while (currentNode != NULL) {
        if (cFunc(currentNode->num)) {
            insertRear(LLPtr, currentNode->num);
        }
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

// Works
struct addrNode **filterLL(struct node **LL, conditionalFunc cFunc) {
    struct node *LLNode = *LL;
    struct addrNode **addrLLPtr = NULL;

    while (LLNode != NULL) {
        if (cFunc(LLNode->num)) {
            if (addrLLPtr == NULL) {
                addrLLPtr = malloc(sizeof(struct addrNode*));
                *addrLLPtr = malloc(sizeof(struct addrNode));
                (*addrLLPtr)->nodeAddr = LLNode;
                (*addrLLPtr)->nextNode = NULL;
            } else {
                struct addrNode *newNode = malloc(sizeof(struct addrNode));
                newNode->nodeAddr = LLNode;
                newNode->nextNode = *addrLLPtr;
                *addrLLPtr = newNode;
            }
        }
        LLNode = LLNode->nextNode;
    }
    return addrLLPtr;
}

