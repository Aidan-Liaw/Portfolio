#include <stdio.h>

int binarySearchIdx(int *arr, int begin, int end, int numFind) {
   if (*(arr + begin) <= *(arr + end)) {
       int middle = (begin + end) / 2;
       if (*(arr + middle) == numFind) {
           return middle;
       } else if (*(arr + middle) < numFind) {
           return binarySearchIdx(&arr[0], middle + 1, end, numFind);
       } else if (*(arr + middle) > numFind) {
           return binarySearchIdx(&arr[0], begin, middle - 1, numFind);
       }
   } else {
       return -1;
   }
}

int main() {
   int arrLen;
   scanf("%d", &arrLen);
   int arr[arrLen];

   for (int idx = 0, *ptr = &arr[0]; idx < arrLen; idx++, ptr++) {
       *ptr = idx;
   }

   int numFind;
   scanf("%d", &numFind);

   int idxFind = binarySearchIdx(&arr[0], 0, arrLen-1, numFind);

   if (idxFind != -1) {
       printf("\n%d", arr[idxFind]);
   }

   return 0;
}
