package ct6;
import java.util.Scanner;

public class AscendingNameBubbleSort {
    public static void main(String[] args) {
        String[] namesArray = new String[7];
        String nameSwitch;
        Scanner inpStr = new Scanner(System.in);
        for (int idx = 0; idx < 7; idx++) {
            namesArray[idx] = inpStr.nextLine();
        }

        for (int numIter = 0; numIter < 6; numIter++) {
            for (int searchIdx = 0; searchIdx < 6-numIter; searchIdx++) {
                if (namesArray[searchIdx].toLowerCase().charAt(0)
                        > namesArray[searchIdx + 1].toLowerCase().charAt(0)) {
                    nameSwitch = namesArray[searchIdx];
                    namesArray[searchIdx] = namesArray[searchIdx + 1];
                    namesArray[searchIdx + 1] = nameSwitch;
                }
            }
        }

        for (String idx : namesArray) {
            System.out.println(idx);
        }
    }
}
