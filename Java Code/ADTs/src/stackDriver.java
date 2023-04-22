package ADT.src;

public class stackDriver {
    public static void main(String[] args) {
        arrStack<Integer> arr = new arrStack<>(Integer.class, 5);

        for (int idx = 0; idx < 7; idx++) {
            arr.push(idx);
            System.out.println(arr.peek());
        }

        System.out.println(arr.isFull());

        for (int idx = 0; idx < 7; idx++) {
            System.out.println(arr.pop());
        }

        System.out.println(arr.isEmpty());
    }
}
