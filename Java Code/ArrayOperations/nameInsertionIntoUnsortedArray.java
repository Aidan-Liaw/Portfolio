package ct5;
import java.util.Scanner;

public class nameInsertionIntoUnsortedArray {
    public static void main(String[] args) {
        Scanner inpStr = new Scanner(System.in);
        Scanner inpInt = new Scanner(System.in);
        String[] namesArray = new String[7];
        for (int idx = 0; idx < 6; idx++) {
            namesArray[idx] = inpStr.nextLine();
        }
        String nameInsert = inpStr.nextLine();
        int insertIdx = inpInt.nextInt(), idxMove = 5;

        while (idxMove >= insertIdx - 1) {
            namesArray[idxMove + 1] = namesArray[idxMove];
            idxMove -= 1;
        }
        namesArray[insertIdx - 1] = nameInsert;
        for (String idx : namesArray) {
            System.out.println(idx);
        }

    }
}

// 3. Input 6 names into array (unsorted) and insert a new name into the location indicated by user.
