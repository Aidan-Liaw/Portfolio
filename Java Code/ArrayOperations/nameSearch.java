package ct5;
import java.util.Scanner;

public class nameSearch {
    public static void main(String[] args) {
        Scanner inpInt = new Scanner(System.in);
        Scanner inpString = new Scanner(System.in);
        String[] namesArray = new String[5];
        for (int idx = 0; idx < 5; idx++) {
            namesArray[idx] = inpInt.nextLine();
        }
        String nameFind = inpString.nextLine();
        for (int idx = 0; idx < 5; idx++) {
            if (namesArray[idx].compareToIgnoreCase(nameFind) == 0) {
                System.out.println("Name found at position: " + (idx+1));
            }
        }
    }
}
