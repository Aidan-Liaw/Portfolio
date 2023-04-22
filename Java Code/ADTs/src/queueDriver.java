package ADT.src;

public class queueDriver {
    public static void main(String[] args) {
        arrQueue<Integer> arr = new arrQueue<>(Integer.class, 5);

        for (int idx = 0; idx < 7; idx++) {
            arr.enqueue(idx);
            System.out.println(arr.peek());
        }

//        System.out.println(arr.isFull());

        arr.display();

        for (int idx = 0; idx < 7; idx++) {
            System.out.println(arr.dequeue());
        }

        System.out.println(arr.isEmpty());
    }
}
