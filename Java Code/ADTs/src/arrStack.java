package ADT.src;
import java.lang.reflect.Array;

public class arrStack<T> {
    public T[] array;
    private int topIdx = -1;

    public arrStack(Class<T> dataType, int length) {
        array = (T[]) Array.newInstance(dataType, length);
    }

    public void push(T inp) {
        if (topIdx != array.length-1) {
            topIdx++; array[topIdx] = inp;
        } else {
            System.out.println("Overflow.");
        }
    }

    public T pop() {
        if (topIdx != -1) {
            topIdx--;
            return array[topIdx+1];
        } else {
            System.out.println("Underflow.");
            return null;
        }
    }

    public T peek() {
        if (topIdx != -1) {
            return array[topIdx];
        } else {
            System.out.println("Empty Stack.");
            return null;
        }
    }

    public boolean isFull() {
        return topIdx == array.length-1;
    }

    public boolean isEmpty() {
        return topIdx == -1;
    }
}
