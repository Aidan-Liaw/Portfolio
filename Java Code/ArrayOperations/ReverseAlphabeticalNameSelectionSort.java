package ct6;
import java.util.Scanner;

public class ReverseAlphabeticalNameSelectionSort {
    public static void main(String[] args) {
        String[] namesArray = new String[7];
        Scanner inpStr = new Scanner(System.in);
        for (int idx = 0; idx < 7; idx++) {
            namesArray[idx] = inpStr.nextLine();
        }

        int lowerBoundIdx = 0, position, upperBoundIdx;
        String nameSwitch;
        while (lowerBoundIdx < 6) {
            position = lowerBoundIdx;
            upperBoundIdx = lowerBoundIdx + 1;
            while (upperBoundIdx < 7) {
                if (namesArray[position].toLowerCase().charAt(0)
                        < namesArray[upperBoundIdx].toLowerCase().charAt(0)) {
                        position = upperBoundIdx;
                }
                upperBoundIdx += 1;
            }

            if (position != lowerBoundIdx) {
                nameSwitch = namesArray[lowerBoundIdx];
                namesArray[lowerBoundIdx] = namesArray[position];
                namesArray[position] = nameSwitch;
            }
            lowerBoundIdx += 1;
        }

        for (String idx : namesArray) {
            System.out.println(idx);
        }
    }
}
