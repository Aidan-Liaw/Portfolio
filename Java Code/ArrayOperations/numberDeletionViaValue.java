package ct5;
import java.util.Scanner;

public class numberDeletionViaValue {
    public static void main(String[] args) {
        Scanner inpInt = new Scanner(System.in);

        int[] numArray = new int[10];
        for (int idx = 0; idx < 10; idx++) {
            numArray[idx] = inpInt.nextInt();
        }

        int idxDelete = 0;

        int numDelete = inpInt.nextInt();
        for (int idx = 0; idx < 10; idx++) {
            if (numArray[idx] == numDelete) {
                idxDelete = idx;
            }
        }


        while (idxDelete < 9) {
            numArray[idxDelete] = numArray[idxDelete+1];
            idxDelete += 1;
        }

        numArray[9] = 0;

        for (int idx : numArray) {
            System.out.println(idx);
        }

    }
}
