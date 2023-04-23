package ADT.src;
import java.lang.reflect.Array;
import static java.lang.Math.abs;

public class arrCQueue<T> {

    public T[] array;
    private int frontIdx = -1;
    private int rearIdx = -1;

    public arrCQueue(Class<T> dataType, int length) { array = (T[]) Array.newInstance(dataType, length);}

    public void enqueue(T inp) {
        if ((rearIdx + 1) % array.length == frontIdx) {
            System.out.println("Queue is full.");
        } else {
            rearIdx = (rearIdx + 1) % array.length;
            array[rearIdx] = inp;

            frontIdx = (frontIdx == -1) ? 0 : frontIdx;
        }
    }

    public T dequeue() {
        if (frontIdx != -1 && rearIdx != -1) {
            int tempVar = frontIdx;
            if (frontIdx == rearIdx) {
                frontIdx = rearIdx = -1;

            } else {
                frontIdx = (frontIdx + 1) % array.length;
            }
            return array[tempVar];
        } else {
            System.out.println("Empty Queue.");
            return null;
        }
    }

    public T peek() {
        if (frontIdx != -1) {
            return array[frontIdx];
        } else {
            System.out.println("Empty Queue.");
            return null;
        }
    }

    public void display() {
        if (frontIdx == -1) {
            System.out.println("Queue undeflow.");
        } else {
            int idx = frontIdx;
            while (idx != rearIdx) {
                System.out.println(array[idx]);
                idx = (idx + 1) % array.length;
            }

            System.out.println(array[idx]);
        }

    }

    public boolean isFull() {
        return abs(frontIdx - rearIdx) == array.length-1;
    }

    public boolean isEmpty() {
        return frontIdx == -1 && rearIdx == -1;
    }
}
