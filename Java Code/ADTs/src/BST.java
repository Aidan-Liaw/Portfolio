package ADT.src;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Stack;
import java.util.function.BiFunction;

public class BST<T> {

    public node<T> root;
    private BiFunction<T, T, Integer> comparator;

    public <T extends Comparable<T>> BST() {
        this.root = null;
    }

    public BST(BiFunction<T, T, Integer> comparator) {
        this.root = null;
        this.comparator = comparator;
    }

    public <T extends Comparable<T>> BST(T inp) {
        this.root = new node<>();
        this.root.setData(inp);
        this.comparator = null;
    }

    public BST(T inp, BiFunction<T, T, Integer> comparator) {
        this.root = new node<>();
        this.root.setData(inp);
        this.comparator = comparator;
    }

    public <T extends Comparable<T>> BST(node<T> root) {
        if (BSTIsBValid((node) root)) {
            this.root = (node) root;
            this.comparator = null;
        }
        else throw new IllegalArgumentException();
    }

    public BST(node<T> root, BiFunction<T, T, Integer> comparator) {
        if (BSTIsBValid(root)) {
            this.root = (node) root;
            this.comparator = comparator;
        }
        else throw new IllegalArgumentException();
    }

    public boolean BSTIsBValid(node<T> root) {
        Stack<node<T>> lowerLevelNodes = new Stack<>();
        Stack<node<T>> upperLevelNodes = new Stack<>();

        lowerLevelNodes.push(root);

        while (!lowerLevelNodes.isEmpty()) {
            node<T> parent = lowerLevelNodes.pop();
            if ((parent.lLink == null || this.compareTo(parent.getData(), parent.lLink.getData()) > 0)

                    && (parent.rLink == null || this.compareTo(parent.getData(), parent.rLink.getData()) < 0)) {
                if (parent.lLink != null) {
                    upperLevelNodes.push(parent.lLink);
                }
                if (parent.rLink != null) {
                    upperLevelNodes.push(parent.rLink);
                }
            } else {
                return false;
            }

            if (lowerLevelNodes.isEmpty() && !upperLevelNodes.isEmpty()) {
                lowerLevelNodes = upperLevelNodes;
                upperLevelNodes = new Stack<>();
            }
        }

        return true;
    }

//    public <T extends Comparable<T>> int compareTo(T inp1, T inp2) {
//        return inp1.compareTo(inp2);
//    }

    public int compareTo(T inp1, T inp2) {
        if (Comparable.class.isAssignableFrom(inp1.getClass())) {
            return ((Comparable<T>) inp1).compareTo(inp2);
        }
        return this.comparator.apply(inp1, inp2);
    }

    public void insert(T inp) {
        node<T> newNode = new node<T>(inp);
        if (this.root == null) {
            this.root = newNode;
        } else {
            node<T> current = this.root;
            node<T> parent;
            for (;;) {
                parent = current;

                if (this.compareTo(parent.getData(), inp) > 0) {
                    current = current.lLink;
                    if (current == null) {
                        parent.lLink = newNode;
                        return;
                    }
                } else {
                    current = current.rLink;
                    if (current == null) {
                        parent.rLink = newNode;
                        return;
                    }
                }
            }
        }
    }

    public void delete(T inp) {
        if (this.root != null) {
            node<T> parent = null;
            node<T> current = this.root;
            for (;;) {
                if (this.compareTo(current.getData(), inp) == 0) {
                    break;
                } else if (this.compareTo(current.getData(), inp) > 0) {
                    parent = current;
                    current = current.lLink;
                    if (current == null) {
                        System.out.println("Can't be found");
                        return;
                    }
                } else {
                    parent = current;
                    current = current.rLink;
                    if (current == null) {
                        System.out.println("Can't be found");
                        return;
                    }
                }
            }

            if (current.lLink == null && current.rLink == null) {
                if (current.equals(parent.lLink)) {
                    parent.lLink = null;
                } else {
                    parent.rLink = null;
                }
                return;
            }

            node<T> newSubtree = null;

            if (current.lLink == null || current.rLink == null) {
                if (current.lLink == null) {
                    newSubtree = current.rLink;
                }

                if (current.rLink == null) {
                    newSubtree = current.lLink;
                }

                if (parent == null) {
                    this.root = newSubtree;
                    return;
                }

                if (current.equals(parent.lLink)) {
                    parent.lLink = newSubtree;
                } else {
                    parent.rLink = newSubtree;
                }
                return;
            }

            node<T> tempNode = current.rLink;
            while (tempNode.lLink != null) {
                newSubtree = tempNode;
                tempNode = tempNode.lLink;
            }

            if (newSubtree != null) {
                newSubtree.lLink = tempNode.rLink;
            } else {
                current.rLink = tempNode.rLink;
            }

            current.setData(tempNode.getData());
        }
    }

    public void preorderTraversalPrint() {
        System.out.println();
        preorderTraversalPrintHelper(this.root);
    }

    private void preorderTraversalPrintHelper(node<T> node) {
        if (node != null) {
            System.out.print(node.getData() + " ");
            preorderTraversalPrintHelper(node.lLink);
            preorderTraversalPrintHelper(node.rLink);
        }
    }

    public void inorderTraversalPrint() {
        System.out.println();
        inorderTraversalPrintHelper(this.root);
    }

    private void inorderTraversalPrintHelper(node<T> node) {
        if (node != null) {
            inorderTraversalPrintHelper(node.lLink);
            System.out.print(node.getData() + " ");
            inorderTraversalPrintHelper(node.rLink);
        }
    }

    public void postorderTraversalPrint() {
        System.out.println();
        postorderTraversalPrintHelper(this.root);
    }

    private void postorderTraversalPrintHelper(node<T> node) {
        if (node != null) {
            postorderTraversalPrintHelper(node.lLink);
            postorderTraversalPrintHelper(node.rLink);
            System.out.print(node.getData() + " ");
        }
    }

    public T findMiniumumValue() {
        if (this.root == null) { return null; }
        node<T> current = this.root;
        while (current.lLink != null) {
            current = current.lLink;
        }

        return current.getData();
    }

    public T findMaxmimumValue() {
        if (this.root == null) { return null; }
        node<T> current = this.root;
        while (current.rLink != null) {
            current = current.rLink;
        }

        return current.getData();
    }

    public boolean isIn(T inp) {
        return isInHelper(inp, this.root);
    }

    private boolean isInHelper(T inp, node<T> node) {
        if (node == null) { return false; }
        if (this.compareTo(node.getData(), inp) == 0) { return true; }
        if (this.compareTo(node.getData(), inp) > 0) { return isInHelper(inp, node.lLink); }
        if (this.compareTo(node.getData(), inp) < 0) { return isInHelper(inp, node.rLink); }
        throw new UnknownError();
    }

    public node<T> getNode(T inp) {
        return getNodeHelper(inp, this.root);
    }

    private node<T> getNodeHelper(T inp, node<T> node) {
        if (node == null) { return null; }
        if (this.compareTo(node.getData(), inp) == 0) { return node; }
        if (this.compareTo(node.getData(), inp) > 0) { return getNodeHelper(inp, node.lLink); }
        if (this.compareTo(node.getData(), inp) < 0) { return getNodeHelper(inp, node.rLink); }
        throw new UnknownError();
    }
}
