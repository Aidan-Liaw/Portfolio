#include "library.h"

#include <stdio.h>
#include <stdlib.h>

struct node {
    int num;
    struct node *nextNode;
};

inline void traverse(struct node *LL) {
    struct node *currentNode = LL;
    printf("\nHead -> ");
    do {
        printf("%d -> ", currentNode->num);
        currentNode = currentNode->nextNode;
    } while (currentNode != NULL);
    printf(NULL);
}

inline void deleteLL(struct node **LL) {
    struct node *currentNode = *LL;

    while (*LL) {
        *LL = (*LL)->nextNode;
        free(currentNode);
        currentNode = *LL;
    }
}

int noOfNodes(struct node *LL) {
    struct node *currentNode = LL;
    int num = 0;
    while (currentNode != NULL) {
        currentNode = currentNode->nextNode;
        num++;
    }
    return num;
}

int isEmpty(struct node *LL) {
    return (LL == NULL);
}

int readNodePos(struct node *LL, int pos) {
    struct node *currentNode = LL;
    if (pos < 1) {
        printf("Invalid position");
        return -2;
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

inline void insertFront(struct node **LL, int value) {
    struct node *currentNode = malloc(sizeof(struct node));
    currentNode->num = value;
    currentNode->nextNode = *LL;
    *LL = currentNode;
}

inline void insertRear(struct node *LL, int value) {
    struct node *currentNode = LL;
    while (currentNode->nextNode != NULL) {
        currentNode = currentNode->nextNode;
    }
    currentNode->nextNode = malloc(sizeof(struct node));
    currentNode->nextNode->num = value;
    currentNode->nextNode->nextNode = NULL;
}

inline void insertAfterPos(struct node *LL, int value, int pos) {
    if (pos < 1) { printf("Invalid position"); return; }
    struct node *currentNode = LL;
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

inline void insertAfterVal(struct node *LL, int searchVal, int insertVal) {
    struct node *currentNode = LL;
    while (currentNode != NULL && currentNode->num != searchVal) {
        currentNode = currentNode->nextNode;
    }
    if (currentNode == NULL) {
        printf("Value does not exist.");
    } else {
        // currentNode = node that new node will go after
        struct node tempNode = *currentNode->nextNode;

        currentNode->nextNode = malloc(sizeof(struct node));
        currentNode->nextNode->num = insertVal;
        currentNode->nextNode->nextNode = &tempNode;
    }
}

int deleteFront(struct node **LL) {
    struct node *removeNode = *LL;

    int returnInt = (*LL)->num;
    *LL = (*LL)->nextNode;
    free(removeNode);
    return returnInt;
}

int deleteRear(struct node **LL) {
    struct node *removeNode = *LL;

    while ((removeNode)->nextNode != NULL) {
        removeNode = removeNode->nextNode;
    }

    int returnInt = removeNode->num;
    free(removeNode);
    return returnInt;
}

int deletePos(struct node **LL, int pos) {
    struct node *currentNode = *LL;
    if (pos < 1) {
        printf("Invalid position");
        return -2;
    } else if (pos == 1) {
        return deleteFront(LL);
    } else {
        for (int currentNodePos = 1; currentNodePos < pos-1; ++currentNodePos) {
            currentNode = currentNode->nextNode;
            if (currentNode == NULL) { break; }
        }
        if (currentNode == NULL) {
            printf("\nInvalid position");
            return -1;
        } else if (currentNode->nextNode == NULL) {
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

int findNodePos(struct node *LL, int searchVal) {
    int pos = 1;
    struct node *currentNode = LL;
    while (currentNode != NULL && currentNode->num != searchVal) {
        currentNode = currentNode->nextNode;
        pos = pos + 1;
    }
    if (currentNode == NULL) {
        printf("Node does not exist.");
        return -1;
    } else {
        return pos;
    }
}

inline void updateNode(struct node *LL, int searchVal, int newVal) {
    struct node *currentNode = LL;
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

inline void updateNodeAtPos(struct node *LL, int pos, int newVal) {
    if (pos < 1) { printf("Invalid position"); return; }
    struct node *currentNode = LL;
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

struct node **mergeLLs(struct node *LL1, struct node *LL2) {
    // A pointer that points to a pointer that points to the start of a LL
    // In other words, a variable that holds the memory address
    // that contains the memory location of the start of a LL
    struct node **LLPtr = malloc(0),
            *currentNode = LL1;
    while (currentNode != NULL) {
        insertRear(*LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }

    currentNode = LL2;
    while (currentNode != NULL) {
        insertRear(*LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

struct node **mergeLLsAtPos(struct node *LL, struct node *insertionLL, int pos) {
    if (pos < 1) { printf("Invalid position"); return NULL; }
    // A pointer that points to a pointer that points to the start of a LL
    // In other words, a variable that holds the memory address
    // that contains the memory location of the start of a LL
    struct node **LLPtr = malloc(0),
            *currentNode = LL, *insertingNode = insertionLL;
    for (int nodePos = 2; nodePos < pos; ++nodePos) {
        insertRear(*LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
        if (currentNode == NULL) { printf("Invalid insertion position"); return NULL; }
    }
    while (insertingNode != NULL) {
        insertRear(*LLPtr, insertingNode->num);
        insertingNode = insertingNode->nextNode;
    }
    while (currentNode != NULL) {
        insertRear(*LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

struct node **mergeLLsAtVal(struct node *searchLL, struct node *insertionLL, int insertVal) {
    struct node **LLPtr = malloc(0),
            *currentNode = searchLL, *insertingNode = insertionLL;
    while (currentNode != NULL && currentNode->num != insertVal) {
        insertRear(*LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    if (currentNode == NULL) { printf("Position does not exist."); return NULL; }
    while (insertingNode != NULL) {
        insertRear(*LLPtr, insertingNode->num);
        insertingNode = insertingNode->nextNode;
    }
    while (currentNode != NULL) {
        insertRear(*LLPtr, currentNode->num);
        currentNode = currentNode->nextNode;
    }
    return LLPtr;
}

struct node **arrayToLL(int* array, int arrLen) {
    struct node **LLPtr = malloc(0);
    for (int *ptr = array, idx = 0; idx < arrLen; ++ptr, ++idx) {
        insertRear(*LLPtr, *ptr);
    }
    return LLPtr;
}

