#include "library.h"

#include <stdio.h>
#include <stdlib.h>

struct node node;

// Works
inline void traverse(struct node *LL) {
    struct node *currentNode = LL;
    printf("\n[HEAD] -> ");
    while (currentNode != NULL) {
        printf("[%d] -> ", currentNode->num);
        currentNode = currentNode->nextNode;
    }
    printf("[NULL]");
}

// Works
inline void deleteLL(struct node **LL) {
    if ((*LL) == NULL) { return; }
    struct node *currentNode = *LL;

    while (*LL) {
        *LL = (*LL)->nextNode;
        free(currentNode);
        currentNode = *LL;
    }
}

// Works
int noOfNodes(struct node *LL) {
    struct node *currentNode = LL;
    int num = 0;
    while (currentNode != NULL) {
        currentNode = currentNode->nextNode;
        num++;
    }
    return num;
}

// Works
int isEmpty(struct node *LL) {
    return (LL == NULL);
}

// Works
int isIn(struct node *LL, int num) {
    struct node *currentNode = LL;
    while (currentNode != NULL) {
        if (currentNode->num == num) { return 1; }
        currentNode = currentNode->nextNode;
    }
    return 0;
}

// Works
int readNodePos(struct node *LL, int pos) {
    struct node *currentNode = LL;
    if (currentNode == NULL) {
        printf("\nEmpty Linked List");
        return -1;
    }
    if (pos < 1) {
        printf("Invalid position");
        return -1;
    } else {
        for (int currentNodePos = 1; currentNodePos < pos; ++currentNodePos) {
            currentNode = currentNode->nextNode;
            if (currentNode == NULL) { break; }
        }
        if (currentNode == NULL) {
            printf("\nInvalid position");
            return -1;
        } else {
            return currentNode->num;
        }
    }
}

// Works
inline void insertFront(struct node **LL, int value) {
    struct node *currentNode = malloc(sizeof(struct node));
    currentNode->num = value;
    if (LL == NULL) {
        LL = malloc(sizeof(struct node*));
        *LL = malloc(sizeof(struct node));
        (*LL)->num = value;
        (*LL)->nextNode = NULL;
    } else {
        currentNode->nextNode = *LL;
        *LL = currentNode;
    }
}

// Works
inline void insertRear(struct node **LL, int value) {
    if ((*LL) == NULL) { insertFront(LL, value); return; }
    struct node *currentNode = *LL;
    while (currentNode->nextNode != NULL) {
        currentNode = currentNode->nextNode;
    }
    currentNode->nextNode = malloc(sizeof(struct node));
    currentNode->nextNode->num = value;
    currentNode->nextNode->nextNode = NULL;
}

// Works
inline void insertBeforePos(struct node **LL, int value, int pos) {
    if (pos < 1) { printf("Invalid position"); return; }
    if (pos == 1) { insertFront(LL, value); return; }
    struct node *currentNode = *LL;
    for (int nodePos = 2; nodePos <= pos-1; ++nodePos) {
        currentNode = currentNode->nextNode;
        if (currentNode == NULL) { break; }
    }
    if (currentNode == NULL) {
        printf("Position does not exist.");
    } else {
        // currentNode = node that new node will go after
        struct node *tempNode = currentNode->nextNode;

        currentNode->nextNode = malloc(sizeof(struct node));
        currentNode->nextNode->num = value;
        currentNode->nextNode->nextNode = tempNode;
    }
}

// Works
inline void insertBeforeVal(struct node **LL, int searchVal, int insertVal) {
    struct node *currentNode = *LL;
    if (currentNode->num == searchVal) { insertFront(LL, insertVal); return;}
    while (currentNode != NULL && currentNode->nextNode != NULL
            && currentNode->nextNode->num != searchVal) {
        currentNode = currentNode->nextNode;
    }
    if (currentNode == NULL ) {
        printf("Value does not exist.");
    } else {
        // currentNode = node that new node will go after
        struct node *tempNode = currentNode->nextNode;

        currentNode->nextNode = malloc(sizeof(struct node));
        currentNode->nextNode->num = insertVal;
        currentNode->nextNode->nextNode = tempNode;
    }
}

// Works
inline void insertAfterPos(struct node **LL, int value, int pos) {
    if (pos < 1) { printf("Invalid position"); return; }
    struct node *currentNode = *LL;
    for (int nodePos = 2; nodePos <= pos; ++nodePos) {
        currentNode = currentNode->nextNode;
        if (currentNode == NULL) { break; }
    }
    if (currentNode == NULL) {
        printf("Position does not exist.");
    } else {
        // currentNode = node that new node will go after
        struct node *tempNode = currentNode->nextNode;

        currentNode->nextNode = malloc(sizeof(struct node));
        currentNode->nextNode->num = value;
        currentNode->nextNode->nextNode = tempNode;
    }
}

// Works
inline void insertAfterVal(struct node **LL, int searchVal, int insertVal) {
    struct node *currentNode = *LL;
    while (currentNode != NULL && currentNode->num != searchVal) {
        currentNode = currentNode->nextNode;
    }
    if (currentNode == NULL) {
        printf("Value does not exist.");
    } else {
        // currentNode = node that new node will go after
        struct node *tempNode = currentNode->nextNode;

        currentNode->nextNode = malloc(sizeof(struct node));
        currentNode->nextNode->num = insertVal;
        currentNode->nextNode->nextNode = tempNode;
    }
}

// Works
int deleteFront(struct node **LL) {
    struct node *removeNode = *LL;

    int returnInt = (*LL)->num;
    *LL = (*LL)->nextNode;
    free(removeNode);
    return returnInt;
}

// Works
int deleteRear(struct node **LL) {
    struct node *currentNode = *LL;

    if (currentNode->nextNode == NULL) {
        int returnInt = (*LL)->num;
        *LL = (*LL)->nextNode;
        free(currentNode);
        return returnInt;
    }
    while (currentNode->nextNode->nextNode != NULL) {
        currentNode = currentNode->nextNode;
    }
    // currentNode is now the node behind the node to be deleted.

    int returnInt = currentNode->nextNode->num;
    free(currentNode->nextNode);
    currentNode->nextNode = NULL;
    return returnInt;
}

// Works
int deletePos(struct node **LL, int pos) {
    struct node *currentNode = *LL;
    if (pos < 1) {
        printf("Invalid position");
        return -1;
    } else if (pos == 1) {
        return deleteFront(LL);
    } else {
        for (int currentNodePos = 1; currentNodePos < pos-1; ++currentNodePos) {
            currentNode = currentNode->nextNode;
            if (currentNode == NULL) { printf("\nInvalid position"); return -1; }
        }
        if (currentNode->nextNode == NULL) {
            int returnNum = (*LL)->num;
            deleteLL(LL);
            return returnNum;
        } else {
            // currentNode is now the node behind the node to delete
            // currentNode->nextNode->nextNode is the node after the node to delete
            int returnNum = currentNode->nextNode->num;
            struct node *deleteNode = currentNode->nextNode;
            currentNode->nextNode = currentNode->nextNode->nextNode;
            free(deleteNode);

            return returnNum;
        }
    }
}

// Works
int findNodePos(struct node **LL, int searchVal) {
    int pos = 1;
    struct node *currentNode = *LL;
    while (currentNode != NULL && currentNode->num != searchVal) {
        currentNode = currentNode->nextNode;
        pos = pos + 1;
    }
    if (currentNode == NULL) {
        printf("\nNode does not exist.");
        return -1;
    } else {
        return pos;
    }
}

// Works
inline void updateNode(struct node **LL, int searchVal, int newVal) {
    struct node *currentNode = *LL;
    while (currentNode != NULL && currentNode->num != searchVal) {
        currentNode = currentNode->nextNode;
    }
    if (currentNode == NULL) {
        printf("Value does not exist.");
    } else {
        // currentNode = node that is to be updated
        currentNode->num = newVal;
    }
}

// Works
inline void updateNodeAtPos(struct node **LL, int pos, int newVal) {
    if (pos < 1) { printf("Invalid position"); return; }
    struct node *currentNode = *LL;
    for (int nodePos = 2; nodePos <= pos; ++nodePos) {
        currentNode = currentNode->nextNode;
        if (currentNode == NULL) { break; }
    }
    if (currentNode == NULL) {
        printf("Position does not exist.");
    } else {
        // currentNode = node that is to be updated
        currentNode->num = newVal;
    }
}

// Works
struct node **reverseLL(struct node *LL) {
    struct node **LLPtr = malloc(0);
    struct node *currentNode = LL;
    if (LL == NULL) {
        printf("\nLinked List is NULL");
        (*LLPtr) = NULL;
        return LLPtr;
    }
    while (currentNode != NULL) {
        insertFront(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

// Works
struct node **mergeLLs(struct node *LL1, struct node *LL2) {
    // A pointer that points to a pointer that points to the start of a LL
    // In other words, a variable that holds the memory address
    // that contains the memory location of the start of a LL
    struct node **LLPtr = malloc(0);
    if (LL1 == NULL || LL2 == NULL) {
        printf("\nError. LL1 == NULL =: %i "
               "\nLL2 == NULL =: %i", (LL1 == NULL), (LL2 == NULL));
        (*LLPtr) = NULL;
        return LLPtr;
    }
    struct node *currentNode = LL1;
    while (currentNode != NULL) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }

    currentNode = LL2;
    while (currentNode != NULL) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

// Works
struct node **mergeLLsBeforePos(struct node *LL, struct node *insertionLL, int pos) {
    struct node **LLPtr = malloc(0);
    if (pos < 1) {
        printf("\nInvalid position");
        (*LLPtr) = NULL;
        return LLPtr;
    }
    if (LL == NULL || insertionLL == NULL) {
        printf("\nError. LL == NULL =: %i "
               "\ninsertionLL == NULL =: %i", (LL == NULL), (insertionLL == NULL));
        (*LLPtr) = NULL;
        return LLPtr;
    }
    // A pointer that points to a pointer that points to the start of a LL
    // In other words, a variable that holds the memory address
    // that contains the memory location of the start of a LL
    struct node *currentNode = LL, *insertingNode = insertionLL;
    for (int nodePos = 1; nodePos < pos; ++nodePos) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
        if (currentNode == NULL) {
            printf("\nInvalid insertion position");
            (*LLPtr) = NULL;
            return LLPtr;
        }
    }
    while (insertingNode != NULL) {
        insertRear(LLPtr, insertingNode->num);
        insertingNode = insertingNode->nextNode;
    }
    while (currentNode != NULL) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

// Works
struct node **mergeLLsBeforeVal(struct node *searchLL, struct node *insertionLL, int insertVal) {
    struct node **LLPtr = malloc(0),
            *currentNode = searchLL, *insertingNode = insertionLL;
    if (searchLL == NULL || insertionLL == NULL) {
        printf("\nError. searchLL == NULL =: %i "
               "\ninsertionLL == NULL =: %i", (searchLL == NULL), (insertionLL == NULL));
        (*LLPtr) = NULL;
        return LLPtr;
    }
    while (currentNode != NULL && currentNode->num != insertVal) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    if (currentNode == NULL) {
        printf("Position does not exist.");
        (*LLPtr) = NULL;
        return LLPtr;
    }
    while (insertingNode != NULL) {
        insertRear(LLPtr, insertingNode->num);
        insertingNode = insertingNode->nextNode;
    }
    while (currentNode != NULL) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

// Works
struct node **mergeLLsAfterPos(struct node *LL, struct node *insertionLL, int pos) {
    struct node **LLPtr = malloc(0);
    if (pos < 1) {
        printf("\nInvalid position");
        (*LLPtr) = NULL;
        return LLPtr;
    }
    if (LL == NULL || insertionLL == NULL) {
        printf("\nError. LL == NULL =: %i "
               "\ninsertionLL == NULL =: %i", (LL == NULL), (insertionLL == NULL));
        (*LLPtr) = NULL;
        return LLPtr;
    }
    // A pointer that points to a pointer that points to the start of a LL
    // In other words, a variable that holds the memory address
    // that contains the memory location of the start of a LL
    struct node *currentNode = LL, *insertingNode = insertionLL;
    for (int nodePos = 1; nodePos <= pos; ++nodePos) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
        if (currentNode == NULL && nodePos != pos) {
            printf("\nInvalid insertion position");
            (*LLPtr) = NULL;
            return LLPtr;
        }
    }
    while (insertingNode != NULL) {
        insertRear(LLPtr, insertingNode->num);
        insertingNode = insertingNode->nextNode;
    }
    while (currentNode != NULL) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

// Works
struct node **mergeLLsAfterVal(struct node *searchLL, struct node *insertionLL, int insertVal) {
    struct node **LLPtr = malloc(0);
    if (searchLL == NULL || insertionLL == NULL) {
        printf("\nError. searchLL == NULL =: %i "
               "\ninsertionLL == NULL =: %i", (searchLL == NULL), (insertionLL == NULL));
        (*LLPtr) = NULL;
        return LLPtr;
    }
    struct node *currentNode = searchLL, *insertingNode = insertionLL;
    int isFound = 0;
    while (currentNode != NULL && currentNode->num != insertVal) {
        insertRear(LLPtr, currentNode->num);
        isFound = currentNode->num == insertVal;
        currentNode = currentNode->nextNode;
    }
    if (currentNode == NULL && !isFound) {
        printf("\nValue does not exist.");
        (*LLPtr) = NULL;
        return LLPtr;
    } else {
        insertRear(LLPtr, currentNode->num);
        isFound = currentNode->num == insertVal;
        currentNode = currentNode->nextNode;
    }
    while (insertingNode != NULL) {
        insertRear(LLPtr, insertingNode->num);
        insertingNode = insertingNode->nextNode;
    }
    while (currentNode != NULL) {
        insertRear(LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

// Works
struct node **arrayToLL(int* array, int arrLen) {
    struct node **LLPtr = malloc(0);
    for (int *ptr = array, idx = 0; idx < arrLen; ++ptr, ++idx) {
        insertRear(LLPtr, *ptr);
    }
    return LLPtr;
}

// Works
int **LLToArray(struct node *LL) {
    int arrSize = noOfNodes(LL);
    struct node *currentNode = LL;
    int **arrPtrToArrPtr = malloc(sizeof(int*));
    *arrPtrToArrPtr = (int*) malloc(arrSize * sizeof(int));
    for (int idx = 0; idx < arrSize; ++idx) {
        *(*arrPtrToArrPtr + idx) = currentNode->num;
        currentNode = currentNode->nextNode;
    }
    return arrPtrToArrPtr;
}
