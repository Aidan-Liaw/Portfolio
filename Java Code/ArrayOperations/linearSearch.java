package ct5;
import java.util.Scanner;

public class linearSearch {
    public static void main(String[] args) {
        Scanner inp = new Scanner(System.in);
        int arrSize = inp.nextInt(), found = 0;
        int[] numArray = new int[arrSize];
        for (int idx = 0; idx <= arrSize-1; idx++) {
            numArray[idx] = inp.nextInt();
        }

        int numFind = inp.nextInt();
        for (int idx = 0; idx <= arrSize-1; idx++) {
            if (numArray[idx] == numFind) {
                found++;
                System.out.println("Number found.");
                System.out.println("Number is found at position: " + (idx+1));
                break;
            }
        }
        if (found == 0) {
            System.out.println("Element not found.");
        }


    }
}
