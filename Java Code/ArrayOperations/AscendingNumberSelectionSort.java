package ct6;
import java.util.Scanner;

public class AscendingNumberSelectionSort {
    public static void main(String[] args) {
        int arrLength = 10;
        int[] scoresArray = new int[arrLength];
        Scanner inpStr = new Scanner(System.in);
        for (int idx = 0; idx < arrLength; idx++) {
            scoresArray[idx] = inpStr.nextInt();
        }

        int lowerBoundIdx = 0, position, upperBoundIdx;
        int scoreSwitch;
        while (lowerBoundIdx < arrLength-1) {
            position = lowerBoundIdx;
            upperBoundIdx = lowerBoundIdx + 1;
            while (upperBoundIdx < arrLength) {
                if (scoresArray[position] > scoresArray[upperBoundIdx]) {
                    position = upperBoundIdx;
                }
                upperBoundIdx += 1;
            }

            if (position != lowerBoundIdx) {
                scoreSwitch = scoresArray[lowerBoundIdx];
                scoresArray[lowerBoundIdx] = scoresArray[position];
                scoresArray[position] = scoreSwitch;
            }
            lowerBoundIdx += 1;
        }

        for (int idx : scoresArray) {
            System.out.println(idx);
        }
    }
}
