package ADT.src;

public class cQueueDriver {
    public static void main(String[] args) {
        arrCQueue<Integer> arr = new arrCQueue<>(Integer.class, 5);

        System.out.println(arr.isEmpty());

        for (int idx = 0; idx < 5; idx++) {
            arr.enqueue(idx);
            System.out.println(arr.peek());
        }


        for (int idx = 0; idx < 5; idx++) {
            System.out.println(arr.dequeue());
            arr.enqueue(idx+idx);
        }

        System.out.println(arr.isFull());

        arr.display();

        for (int idx = 0; idx < 5; idx++) {
            System.out.println(arr.dequeue());
        }

        System.out.println(arr.isEmpty());
    }
}
