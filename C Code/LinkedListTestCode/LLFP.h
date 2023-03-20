#ifndef LINKEDLISTTESTCODE_LLFP_H
#define LINKEDLISTTESTCODE_LLFP_H

extern struct node node;
typedef int (*transformationFunc)(int);
typedef int (*foldFuncInt)(int, int);
typedef float (*foldFuncFloat)(float, float);
typedef int (*conditionalFunc)(int);

struct addrNode {
    struct node *nodeAddr;
    struct addrNode *nextNode;
};

void map(struct node **LL, transformationFunc tFunc);

void conditionalMap(struct node **LL, transformationFunc tFunc, conditionalFunc cFunc);

void addrLLMap(struct addrNode **addrLL, transformationFunc tFunc);

int foldIntLTR(struct node *LL, foldFuncInt fFuncInt);

float foldFloatLTR(struct node *LL, foldFuncFloat fFuncFloat);

int foldIntRTL(struct node *LL, foldFuncInt fFuncInt);

float foldFloatRTL(struct node *LL, foldFuncFloat fFuncFloat);

struct addrNode **filterLL(struct node **LL, conditionalFunc cFunc);

struct node **filterNewLL(struct node **LL, conditionalFunc cFunc);

#endif //LINKEDLISTTESTCODE_LLFP_H
