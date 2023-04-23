package ADT.src;

public class BSTDriver {
    public static void main(String[] args) {
        BST<Integer> tempVar = new BST<>();

        tempVar.insert(0);
        tempVar.insert(3);
        tempVar.insert(-3);
        tempVar.insert(1);
        tempVar.insert(-1);
        tempVar.insert(2);
        tempVar.insert(-2);
        tempVar.insert(4);
        tempVar.insert(-4);
        tempVar.insert(5);
        tempVar.insert(-5);
        System.out.println(tempVar.BSTIsBValid(tempVar.root));

        tempVar.preorderTraversalPrint();
        tempVar.inorderTraversalPrint();
        tempVar.postorderTraversalPrint();

        tempVar.delete(-5);
        System.out.println("\n" + tempVar.BSTIsBValid(tempVar.root));
        tempVar.preorderTraversalPrint();
        tempVar.inorderTraversalPrint();
        tempVar.postorderTraversalPrint();

        tempVar.delete(3);
        System.out.println("\n" + tempVar.BSTIsBValid(tempVar.root));
        tempVar.preorderTraversalPrint();
        tempVar.inorderTraversalPrint();
        tempVar.postorderTraversalPrint();

        tempVar.delete(1);
        System.out.println("\n" + tempVar.BSTIsBValid(tempVar.root));
        tempVar.preorderTraversalPrint();
        tempVar.inorderTraversalPrint();
        tempVar.postorderTraversalPrint();
    }
}
