package ADT.src;

public class linkedListClass<T> {
    protected T node;
    public linkedListClass<T> nextNode;

    public linkedListClass() { nextNode = null; }
    public linkedListClass(T inp) { node = inp; nextNode = null; }

    public T getValue() { return node; }
    public void setNode(T inp) { node = inp; }

    public linkedListClass<T> addFrontNode(linkedListClass<T> node) {
        linkedListClass<T> tempNode = new linkedListClass<T>();
        tempNode.nextNode = node;
        return tempNode;
    }
    public linkedListClass<T> addFrontNode(linkedListClass<T> node, T inp) {
        linkedListClass<T> tempNode = new linkedListClass<T>(inp);
        tempNode.nextNode = node;
        return tempNode;
    }

    public void addEndNode(linkedListClass<T> node) {
        if (node.nextNode != null) {
            addEndNode(node.nextNode);
        } else {
            node.nextNode = new linkedListClass<T>();
        }
    }
    public void addEndNode(linkedListClass<T> node, T inp) {
        if (node.nextNode != null) {
            addEndNode(node.nextNode, inp);
        } else {
            node.nextNode = new linkedListClass<T>(inp);
        }
    }

    public boolean isEmpty(linkedListClass<T> node) { return node.nextNode == null; }
    public int getLength(linkedListClass<T> node) {
        if (node == null) {
            return 0;
        } else { return 1 + getLength(node.nextNode); }
    }
    public void printList(linkedListClass<T> node) {
        if (node != null) {
            System.out.println(node.getValue());
            printList(node.nextNode);
        }
    }

}
