package ct5;
import java.util.Scanner;

public class binarySearch {
    public static void main(String[] args) {
        Scanner inp = new Scanner(System.in);
        int arrSize = inp.nextInt(), begin = 0, end = arrSize - 1, middle;
        int[] numArray = new int[arrSize];
        for (int idx = 0; idx <= arrSize-1; idx++) {
            numArray[idx] = inp.nextInt();
        }

        int numFind = inp.nextInt(), found = 0;
        while (begin <= end) {
            middle = (begin+end)/2;
            if (numArray[middle] == numFind) {
                System.out.println("Successful search, position is: " + (middle+1));
                found++;
                break;
            } else if (numArray[middle] < numFind) {
                begin = middle + 1;
            } else if (numArray[middle] > numFind) {
                end = middle - 1;
            }
        }
        if (found == 0) {
            System.out.println("Number not found.");
        }
    }
}
