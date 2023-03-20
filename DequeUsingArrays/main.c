#include <stdio.h>
#include <stdlib.h>

struct arrDeque {
    int frontIdx;
    int rearIdx;
    int arrLen;
    int array[];
};

// addFront(1) — [1, 0, 0, 0, 0]
// addFront(2) — [1, 2, 0, 0, 0]
// addFront(3) — [1, 2, 3, 0, 0]
// addRear(4) — [1, 2, 3, 0, 4]
// addRear(5) — [1, 2, 3, 5, 4]

// Start: [1, 2, 3, 5, 4]
// removeFront()
// —> [0, 2, *3*, 5, 4]
// —> [2, *3*, 0, 5, 4] (left shift)
// removeFront() — [0, 2, 3, 5, 4]
// —> [0, *3*, 0, 5, 4]
// —> [*3*, 0, 0, 5, 4] (left shift)
// removeFront() — [1, 2, 3, 0, 0]
// —> [0, 0, 0, 5, 4]
// —> [0, 0, 0, 5, 4] (left shift)
void leftElementShift(int *arrPtr, int endingIdx) {
    for (int idx = 0; idx < endingIdx; ++ idx) {
        *(arrPtr + idx) = *(arrPtr + idx + 1);
    }
    *(arrPtr + endingIdx) = 0;
}

// removeRear() — [1, 2, 3, 0, 4]
// —> [0, 0, 0, *5*, 0]
// —> [0, 0, 0, 0, *5*] (right shift)
// removeRear() — [1, 2, 3, 5, 4]
// —> [0, 0, 0, 0, 0]
// —> [0, 0, 0, 0, 0] (right shift)
void rightElementShift(int *arrPtr, int arrLen, int startingIdx) {
    for (int idx = startingIdx; idx < arrLen-1; ++idx) {
        *(arrPtr + idx + 1) = *(arrPtr + idx);
    }
    *(arrPtr + startingIdx) = 0;
}

int isFull(struct arrDeque *DequePtr) {
    return ((DequePtr->frontIdx + 1) == DequePtr->rearIdx)
           || ((DequePtr->frontIdx + 1) == DequePtr->arrLen && (DequePtr->rearIdx == -1))
           || ((DequePtr->rearIdx) == 0 && (DequePtr->frontIdx == -1));
}

int isEmpty(struct arrDeque *DequePtr) {
    return (DequePtr->frontIdx == -1 && DequePtr->rearIdx == -1);
}

void addFront(struct arrDeque *DequePtr, int inp) {
    if (isFull(DequePtr)) {
        printf("\nDeque is full.");
    } else {
        DequePtr->frontIdx = (DequePtr->frontIdx == -1)
                             ? 0
                             : (DequePtr->frontIdx + 1);
        DequePtr->array[DequePtr->frontIdx] = inp;
    }
}

void addRear(struct arrDeque *DequePtr, int inp) {
    if (isFull(DequePtr)) {
        printf("\nDeque is full.");
    } else {
        DequePtr->rearIdx = (DequePtr->rearIdx == -1 || DequePtr->rearIdx == 0)
                            ? DequePtr->arrLen-1
                            : DequePtr->rearIdx - 1;
        DequePtr->array[DequePtr->rearIdx] = inp;
    }
}

// Start: [1, 2, 3, 5, 4]
// removeFront()
// —> [0, 2, *3*, 5, 4]
// —> [2, *3*, 0, 5, 4] (left shift)
int removeFront(struct arrDeque *DequePtr) {
    if (isEmpty(DequePtr)) {
        printf("\nQueue is empty.");
        return -1;
    } else if (DequePtr->frontIdx == -1) {
        printf("\nFront equals -1.");
        return -1;
    } else {
        int returnValue = *(DequePtr->array);
        leftElementShift(DequePtr->array, DequePtr->frontIdx);
//            DequePtr->array[DequePtr->frontIdx] = 0;
        DequePtr->frontIdx = DequePtr->frontIdx - 1;
        return returnValue;
    }
}

// removeRear() — [1, 2, 3, 0, 4]
// —> [0, 0, 0, *5*, 0]
// —> [0, 0, 0, 0, *5*] (right shift)
int removeRear(struct arrDeque *DequePtr) {
    if (isEmpty(DequePtr)) {
        printf("\nQueue is empty.");
        return -1;
    } else if (DequePtr->rearIdx == -1) {
        printf("\nRear equals -1.");
        return -1;
    } else {
        int returnValue = *(DequePtr->array + DequePtr->arrLen - 1);
        rightElementShift(DequePtr->array, DequePtr->arrLen, DequePtr->rearIdx);
//        DequePtr->array[DequePtr->rearIdx] = 0;
        DequePtr->rearIdx = (DequePtr->rearIdx + 1 == DequePtr->arrLen) ? -1
                                                                        : DequePtr->rearIdx + 1;
        return returnValue;
    }
}

int peekFront(struct arrDeque *DequePtr) {
    if (DequePtr->frontIdx != -1) {
        return *(DequePtr->array);
    } else {
        printf("\nEmpty Queue.");
        return -1;
    }
}

int peekRear(struct arrDeque *DequePtr) {
    if (DequePtr->frontIdx != -1) {
        return *(DequePtr->array + DequePtr->arrLen - 1);
    } else {
        printf("\nEmpty Queue.");
        return -1;
    }
}

void display(struct arrDeque *DequePtr) {
    for (int idx = 0; idx < DequePtr->arrLen; ++idx) {
        printf("\n%d", DequePtr->array[idx]);
    }
    printf("\nFront: %d", DequePtr->array[DequePtr->frontIdx]);
    printf("\nRear: %d", DequePtr->array[DequePtr->rearIdx]);
}


int main() {
    int DequeSize;
    DequeSize = 5;
//    scanf("%d", &DequeSize);
    struct arrDeque *DequePtr = malloc(sizeof (struct arrDeque) + DequeSize * sizeof(int));
    DequePtr->frontIdx = -1;
    DequePtr->rearIdx = -1;
    DequePtr->arrLen = DequeSize;

    for (int idx = 0; idx < 5; ++idx) {
        DequePtr->array[idx] = 0;
    }

    printf("\n%d", peekFront(DequePtr));
    printf("\n%d", peekRear(DequePtr));
    printf("\n%d", removeFront(DequePtr));
    printf("\n%d", removeRear(DequePtr));

    addFront(DequePtr, 1);
    addFront(DequePtr, 2);
    addFront(DequePtr, 3);
    addRear(DequePtr, 4);
    addRear(DequePtr, 5);

    printf("\n%d", peekFront(DequePtr));
    printf("\n%d", peekRear(DequePtr));

    addFront(DequePtr, 7);
    addRear(DequePtr, 8);

    display(DequePtr);

    printf("\n%d", removeFront(DequePtr));
    printf("\n%d", removeFront(DequePtr));
    printf("\n%d", removeFront(DequePtr));
    printf("\n%d", removeFront(DequePtr));
    printf("\n%d", removeRear(DequePtr));
    printf("\n%d", removeRear(DequePtr));
    printf("\n%d", removeRear(DequePtr));

    return 0;
}
