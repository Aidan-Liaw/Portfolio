#include <stdio.h>
#include <stdlib.h>

struct arrCQueue {
    int frontIdx;
    int rearIdx;
    int arrLen;
    int array[];
};

int isFull(struct arrCQueue *cQueuePtr) {
    return ((cQueuePtr->rearIdx + 1) % cQueuePtr->arrLen == cQueuePtr->frontIdx);
}

int isEmpty(struct arrCQueue *cQueuePtr) {
    return (cQueuePtr->frontIdx == -1 || cQueuePtr->rearIdx == -1);
}


void enqueue(struct arrCQueue *cQueuePtr, int inp) {
    if (isFull(cQueuePtr)) {
        printf("Queue is full.");
    } else {
        cQueuePtr->rearIdx = (cQueuePtr->rearIdx + 1) % cQueuePtr->arrLen;
        cQueuePtr->array[cQueuePtr->rearIdx] = inp;

        cQueuePtr->frontIdx = (cQueuePtr->frontIdx == -1) ? 0 : cQueuePtr->frontIdx;
    }

}

int dequeue(struct arrCQueue *cQueuePtr) {
    if (isEmpty(cQueuePtr)) {
        printf("Queue is empty.");
        return -1;
    } else {
        if (cQueuePtr->frontIdx == cQueuePtr->rearIdx) {
            int tempIdx = cQueuePtr->frontIdx;
            cQueuePtr->frontIdx = cQueuePtr->rearIdx = -1;
            return cQueuePtr->array[tempIdx];
        } else {
            cQueuePtr->frontIdx = (cQueuePtr->frontIdx + 1) % cQueuePtr->arrLen;
            return cQueuePtr->array[(cQueuePtr->frontIdx - 1)];
        }
    }
}

int peek(struct arrCQueue *cQueuePtr) {
    if (cQueuePtr->frontIdx != -1) {
        return cQueuePtr->array[cQueuePtr->frontIdx];
    } else {
        printf("Empty Queue.");
        return -1;
    }
}

void display(struct arrCQueue *cQueuePtr) {
    for (int idx = cQueuePtr->frontIdx; idx <= cQueuePtr->rearIdx; ++idx) {
        printf("\n%d", cQueuePtr->array[idx]);
    }
}



int main() {
    int cQueueSize;
    scanf("%d", &cQueueSize);
    struct arrCQueue *cQueuePtr = malloc(sizeof (struct arrCQueue) + cQueueSize * sizeof(int));
    cQueuePtr->frontIdx = -1;
    cQueuePtr->rearIdx = -1;
    cQueuePtr->arrLen = cQueueSize;

    for (int idx = 0; idx < cQueuePtr->arrLen * 2; ++idx) {
        if (!isFull(cQueuePtr)) {
            enqueue(cQueuePtr, idx);
            printf("\npeek: %d", peek(cQueuePtr));
        } else {
            printf("\ndequeued: %d", dequeue(cQueuePtr));
            enqueue(cQueuePtr, idx);
            printf("\npeek: %d", peek(cQueuePtr));
        }
    }

    printf("\n\n");
    display(cQueuePtr);

    for (int idx = 0; idx < cQueuePtr->arrLen; ++idx) {
        printf("\n%d", dequeue(cQueuePtr));
    }

    return 0;
}
