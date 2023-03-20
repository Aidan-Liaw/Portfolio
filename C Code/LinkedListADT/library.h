#ifndef LINKEDLISTADT_LIBRARY_H
#define LINKEDLISTADT_LIBRARY_H

struct node;

inline void traverse(struct node *LL);

inline void deleteLL(struct node **LL);

int noOfNodes(struct node *LL);

int isEmpty(struct node *LL);

int readNodePos(struct node *LL, int pos);

inline void insertFront(struct node **LL, int value);

inline void insertRear(struct node *LL, int value);

inline void insertAfterPos(struct node *LL, int value, int pos);

inline void insertAfterVal(struct node *LL, int searchVal, int insertVal);

int deleteFront(struct node **LL);

int deleteRear(struct node **LL);

int deletePos(struct node **LL, int pos);

int findNodePos(struct node *LL, int searchVal);

inline void updateNode(struct node *LL, int searchVal, int newVal);

inline void updateNodeAtPos(struct node *LL, int pos, int newVal);

struct node **mergeLLs(struct node *LL1, struct node *LL2);

struct node **mergeLLsAtPos(struct node *LL, struct node *insertionLL, int pos);

struct node **mergeLLsAtVal(struct node *searchLL, struct node *insertionLL, int insertVal);

struct node **arrayToLL(int* array, int arrLen);

#endif //LINKEDLISTADT_LIBRARY_H
