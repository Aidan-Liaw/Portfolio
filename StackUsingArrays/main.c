#include <stdio.h>
#include <stdlib.h>

struct arrStack {
   int topIdx;
   int arrLen;
   int array[];
};

int pop(struct arrStack *stkPtr) {
   if (stkPtr->topIdx != -1) {
       return stkPtr->array[stkPtr->topIdx--];
   } else {
       printf("\nStack Underflow.");
       return -1;
   }
}

int peek(struct arrStack *stkPtr) {
   if (stkPtr->topIdx != -1) {
       return stkPtr->array[stkPtr->topIdx];
   } else {
       printf("\nEmpty Stack.");
       return -1;
   }
}

int* push(struct arrStack *stkPtr, int inp) {
   if (stkPtr->topIdx != stkPtr->arrLen - 1) {
       stkPtr->array[++stkPtr->topIdx] = inp;
   } else { printf("\nStack Overflow."); }
   return stkPtr->array;
}

int isFull(struct arrStack *stkPtr) {
   if (stkPtr->topIdx == stkPtr->arrLen-1) {
       return 1;
   }
   return 0;
}

int isEmpty(struct arrStack *stkPtr) {
   if (stkPtr->topIdx == -1) {
       return 1;
   }
   return 0;
}

int main() {
   int stkSize;
   scanf("%d", &stkSize);
   struct arrStack *stkPtr = malloc(sizeof(struct arrStack) + stkSize * sizeof(int));
   stkPtr->topIdx = -1;
   stkPtr->arrLen = stkSize;

   printf("\n%d", isEmpty(stkPtr));
   printf("\n%d\n", isFull(stkPtr));

   for (int idx = 0; idx < stkPtr->arrLen; ++idx) {
       push(stkPtr, idx);
       printf("\n%d", peek(stkPtr));
//        printf("\n%d + %d + %d", isEmpty(stkPtr), isFull(stkPtr), peek(stkPtr));
   }

   printf("\n\n%d", isEmpty(stkPtr));
   printf("\n%d\n", isFull(stkPtr));

   for (int idx = 0; idx < stkPtr->arrLen; ++idx) {
       printf("\n%d", pop(stkPtr));
   }

   printf("\nHello, World!");
   return 0;
}
