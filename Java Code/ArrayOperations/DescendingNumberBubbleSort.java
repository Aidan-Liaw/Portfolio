package ct6;
import java.util.Scanner;

public class DescendingNumberBubbleSort {
    public static void main(String[] args) {
        int[] numArray = new int[10];
        Scanner usrInp = new Scanner(System.in);
        for (int idx = 0; idx < 10; idx++) {
            numArray[idx] = usrInp.nextInt();
        }

        for (int numIter = 0; numIter < 9; numIter++) {
            for (int searchIdx = 0; searchIdx < 9-numIter; searchIdx++) {
                if (numArray[searchIdx] < numArray[searchIdx + 1]) {
                    numArray[searchIdx] += numArray[searchIdx + 1];
                    numArray[searchIdx + 1] = numArray[searchIdx] - numArray[searchIdx + 1];
                    numArray[searchIdx] -= numArray[searchIdx + 1];
                }
            }
        }

        for (int idx : numArray) {
            System.out.println(idx);
        }
    }
}
