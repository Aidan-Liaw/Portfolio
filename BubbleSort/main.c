#include <stdio.h>

int main() {
   int arrLen;
   printf("Enter the array length: ");
   scanf("%d", &arrLen);
   int intArr[arrLen];

   for (int idx = 0, *ptr = intArr; idx < arrLen; idx++, ptr++) {
       printf("\nEnter an element: ");
       scanf("%d", ptr);
   }

   int tempVar;

   for (int numIter = 0; numIter < arrLen; numIter++) {
       for (int searchIdx = 0, *searchPtr = &intArr[0]; searchIdx < arrLen - 1 - numIter; searchIdx++, searchPtr++) {
           if (*(searchPtr + 1) > *searchPtr) {
               tempVar = *searchPtr;
               *searchPtr = *(searchPtr + 1);
               *(searchPtr + 1) = tempVar;
           }
       }
   }


   for (int idx = 0, *ptr = &intArr[0]; idx < arrLen; idx++, ptr++) {
       printf("%d\n", *ptr);
   }

   return 0;
}
