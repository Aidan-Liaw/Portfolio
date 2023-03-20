#ifndef LINKEDLISTTESTCODE_LIBRARY_H
#define LINKEDLISTTESTCODE_LIBRARY_H

struct node {
    int num;
    struct node *nextNode;
};

void traverse(struct node *LL);

void deleteLL(struct node **LL);

int noOfNodes(struct node *LL);

int isEmpty(struct node *LL);

int isIn(struct node *LL, int num);

int readNodePos(struct node *LL, int pos);

void insertFront(struct node **LL, int value);

void insertRear(struct node **LL, int value);

void insertBeforePos(struct node **LL, int value, int pos);

void insertBeforeVal(struct node **LL, int searchVal, int insertVal);

void insertAfterPos(struct node **LL, int value, int pos);

void insertAfterVal(struct node **LL, int searchVal, int insertVal);

int deleteFront(struct node **LL);

int deleteRear(struct node **LL);

int deletePos(struct node **LL, int pos);

int findNodePos(struct node **LL, int searchVal);

void updateNode(struct node **LL, int searchVal, int newVal);

void updateNodeAtPos(struct node **LL, int pos, int newVal);

struct node **reverseLL(struct node *LL);

struct node **mergeLLs(struct node *LL1, struct node *LL2);

struct node **mergeLLsBeforePos(struct node *LL, struct node *insertionLL, int pos);

struct node **mergeLLsBeforeVal(struct node *searchLL, struct node *insertionLL, int insertVal);

struct node **mergeLLsAfterPos(struct node *LL, struct node *insertionLL, int pos);

struct node **mergeLLsAfterVal(struct node *searchLL, struct node *insertionLL, int insertVal);

struct node **arrayToLL(int* array, int arrLen);

int **LLToArray(struct node *LL);

#endif //LINKEDLISTTESTCODE_LIBRARY_H
