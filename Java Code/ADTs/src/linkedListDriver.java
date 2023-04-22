package ADT.src;

public class linkedListDriver {
    public static void main(String[] args) {
        linkedListClass<Integer> test = new linkedListClass<Integer>(0);
        test.addEndNode(test, 1);
        test.addEndNode(test, 2);
        test.addEndNode(test, 3);
        test.addEndNode(test, 4);
        test = test.addFrontNode(test, -1);
        test.printList(test);
        System.out.println(test.getLength(test));
    }
}
