package ct5;
import java.util.Scanner;

public class nameInsertionIntoSortedArray {
    public static void main(String[] args) {
        Scanner inpStr = new Scanner(System.in);
        Scanner inpInt = new Scanner(System.in);

        String[] namesArray = new String[8];
        for (int idx = 0; idx < 7; idx++) {
            namesArray[idx] = inpStr.nextLine();
        }
        String nameInsert = inpStr.nextLine();
        int idxMove = 6;

        while (nameInsert.toLowerCase().charAt(0) <= namesArray[idxMove].toLowerCase().charAt(0) && idxMove >= 0) {
            namesArray[idxMove+1] = namesArray[idxMove];
            idxMove -= 1;
        }
        namesArray[idxMove + 1] = nameInsert;
        for (String idx : namesArray) {
            System.out.println(idx);
        }

    }
}
