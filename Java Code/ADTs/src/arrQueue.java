package ADT.src;
import java.lang.reflect.Array;

public class arrQueue<T> {
    public T[] array;
    private int frontIdx = -1;
    private int rearIdx = -1;

    public arrQueue(Class<T> dataType, int length) {
        array = (T[]) Array.newInstance(dataType, length);
    }

    public void enqueue(T inp) {
        if (rearIdx == array.length-1) {
            System.out.println("Queue is full.");
        } else if (rearIdx == -1) {
            frontIdx = rearIdx = 0; array[rearIdx] = inp;
        } else {
            rearIdx++; array[rearIdx] = inp;
        }
    }

    public T dequeue() {
        if (frontIdx == -1) {
            System.out.println("Queue is empty.");
            return null;
        } else {
            if (frontIdx == rearIdx) {
                int tempVar = frontIdx;
                frontIdx = rearIdx = -1;
                return array[tempVar];
            } else {
                frontIdx++;
                return array[frontIdx-1];
            }

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
        for (int idx = frontIdx; idx <= rearIdx; idx++) {
            System.out.println(array[idx]);
        }
    }

//    public boolean isFull() {
//        return rearIdx == array.length-1;
//    }

    public boolean isEmpty() {
        return frontIdx == -1 && rearIdx == -1;
    }
}
