package ADT.src;

public class node<T> {
    private T data;
    protected node<T> lLink;
    protected node<T> rLink;

    public node() {
        data = null;
        lLink = null;
        rLink = null;
    }

    public node(T inp) {
        data = inp;
        lLink = null;
        rLink = null;;
    }


    public T getData() { return data; }
    public void setData(T data) { this.data = data; }
    public <T extends Comparable<T>> void setData(T inp) { this.data = data; }
}
