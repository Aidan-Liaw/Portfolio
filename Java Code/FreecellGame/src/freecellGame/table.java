package freecellGame;
import java.util.*;

public class table {

    /**
     * <h1>The user table class code</h1>
     * This exist as a digital equivalent to what would be present on a physical table when playing freecell.
     * Instantiation of freecellGame.table class.
     * Contains: <blockquote>
     * - tableau, where the cards are first placed, is the playing area <p>
     * </p>
     * - freecell, where cards are temporarily placed during card manipulation <p>
     * </p>
     * - foundation, where all cards must go to win the game <p>
     * </p>
     * - tableauItr, an array of iterators for each column of the tableau <p>
     * </p></blockquote>
     * @since 2021-09-25
     */

    // Holds ArrayLists which represent the card columns in freecell
    public ArrayList<String>[] tableau;
    public String[] freecell;
    // Is a stack as .peek() will be used to view the most recently placed card
    // Reminder that cards cannot be taken off the foundation once placed
    public Stack<String>[] foundation;
    public Iterator<String>[] tableauItr;

    /**
     * <h1>The only constructor for the freecellGame.table class</h1>
     * @param deck Contains the shuffled deck
     */

    public table(String[] deck) {
        tableau = new ArrayList[8]; // There are 8 columns present in freecell
        for (int idx = 0; idx < 8; idx++) {
            // Writes an empty ArrayList to the ArrayList
            tableau[idx] = new ArrayList<String>(7);
        }

        // Distributes the cards in the shuffled deck to the tableau
        table.tableauDistro(deck, tableau);

        // Creates the array of strings
        freecell = new String[4];
        freecell[0] = "Empty"; freecell[1] = "Empty"; freecell[2] = "Empty"; freecell[3] = "Empty";

        // Creates the array of strings
        foundation = new Stack[4];


        for (int idx = 0; idx < 4; idx++) {
            // Populates the foundation array with the individual stacks
            foundation[idx] = new Stack<String>();
        }

        // Creates the array of iterators
        tableauItr = new Iterator[8];
    }

    public static Iterator<String>[] updateIterator(Iterator<String>[] tableauItr,
                                                    ArrayList<String>[] tableau) {
        for (int idx = 0; idx < 8; idx++) {
            // Populates the foundation array with the individual stacks
            tableauItr[idx] = tableau[idx].iterator();
        } return tableauItr;
    }

    public static ArrayList<String>[] tableauDistro(String[] deck, ArrayList<String>[] tableau) {
        int idx = 0; // Initialises the integer for looping through the tableau array
        for (String card : deck) { // Iterates through the deck array
            tableau[idx].add(card); // Adds a card to a card column
            if (idx == 7) { idx = 0; } else { idx++; } // Resets the idx for the distribution to start again
        }
        return tableau; // Returns the populated tableau
    }

    public static void headerInfoPrint(String[] freecell, Stack<String>[] foundation) {
        System.out.println("Foundation: ");
        System.out.println("|  Hearts  |  |  Clubs   |  | Diamonds |  |  Spades  | ");
        for (int idx = 0; idx < 4; idx++) {
            if (foundation[idx].empty()) { // Exist in case the player has played nothing to the foundation
                System.out.print("|  Empty   |  ");
            } else if (foundation[idx].peek().length() == 3) {
                // Used if the card is three characters long (e.g D10) to keep uniform formatting
                System.out.print("|    " + foundation[idx].peek() + "   |  ");
            } else {
                // Used if the card is two characters long (e.g CK) to keep uniform formatting
                System.out.print("|    " + foundation[idx].peek() + "    |  ");
            }
        }
        // Prints the cards in the freecells
        System.out.println("\n\nFreecells: \n  | " + freecell[0] + " |  | " + freecell[1] + " |  | "+ freecell[2] + " |  | " + freecell[3] + " | ");
    }

    public static void tableauPrint(Iterator<String>[] tableauItr, ArrayList<String>[] tableau) {
        // Updates the iterators in case there are changes to the tableau
        updateIterator(tableauItr, tableau);
        System.out.println("\nTableau:");
        // Holds the value of the card
        String tempVar;

        // Ensures that the loop keeps running as long as there is something one of the iterators
        while (tableauItr[0].hasNext() || tableauItr[1].hasNext() || tableauItr[2].hasNext()
                || tableauItr[3].hasNext() || tableauItr[4].hasNext() || tableauItr[5].hasNext()
                || tableauItr[6].hasNext() || tableauItr[7].hasNext()) {

            // Iterates through the 8 card columns
            // This is because this system works by printing the tableau row by row
            // Not card column by card column
            for (int itrIdx = 0; itrIdx < 8; itrIdx++) {
                // Ensures that both cards are displayed in their correct column
                // And that the computer does not try to read the iterator if there is nothing left
                if (!tableauItr[itrIdx].hasNext()) {
                    System.out.print(" | " + "   " + " | ");
                } else {
                    // Holds the next card value to be printed
                    tempVar = (String) tableauItr[itrIdx].next();
                    if (tempVar.length() == 3) {
                        // Used if the card is three characters long (e.g D10) to keep uniform formatting
                        System.out.print(" | " + (String) tempVar + " | ");
                    } else {
                        // Used if the card is two characters long (e.g CK) to keep uniform formatting
                        System.out.print(" | " + (String) tempVar + "  | ");
                    }
                }
            }
            System.out.println();
        }
    }

    public static selectedCards findCards(table usrTable, selectedCards usrSelectedCards, ArrayList<String>[] tableau) {
        if (usrSelectedCards.card2.equals("")) {
            for (String tempVar : usrTable.freecell) {
                if (usrSelectedCards.card1.equalsIgnoreCase(tempVar)) {
                    usrSelectedCards.sourceIdx = -1;
                    return usrSelectedCards;
                }
            }
        }

        int columnIdx = -1, cardLocationIdx = -1;
        for (int idx = 0; idx < 8; idx++) {
            if (!tableau[idx].isEmpty()
                    && tableau[idx].get(tableau[idx].size()-1).equalsIgnoreCase(usrSelectedCards.getCard1())) {
                columnIdx = idx;
                usrSelectedCards.setSourceIdx(idx);
                break;
            }
        }

        if (columnIdx != -1) {
            if (!usrSelectedCards.getCard2().equals("")) {
                for (int idx = 0; idx < tableau[columnIdx].size(); idx++) {
                    if (tableau[columnIdx].get((tableau[columnIdx].size() - 1 - idx))
                            .equalsIgnoreCase(usrSelectedCards.getCard2())) {
                        usrSelectedCards.setRowIdx(tableau[columnIdx].size() - 1 - idx);
                        return usrSelectedCards;
                    }
                }
                System.out.println("Card not found... Please try again.");
                usrSelectedCards.setSourceIdx(-2);
            }
        } else {
            System.out.println("Card not found... Please try again.");
            usrSelectedCards.setSourceIdx(-2);
        }
        return usrSelectedCards;

    }

    public static Map<selectedCards, table> getCards(Map<selectedCards, table> mapInp) {
        selectedCards usrSelectedCards = null;
        table usrTable = null;
        for (Map.Entry<selectedCards, table> tempVar : mapInp.entrySet()) {
            usrSelectedCards = tempVar.getKey();
            usrTable = tempVar.getValue();
        }

        assert usrSelectedCards != null;
        if (usrSelectedCards.sourceIdx == -1) {
            for (int idx = 0; idx < 4; idx++) {
                if (usrTable.freecell[idx].equalsIgnoreCase(usrSelectedCards.card1)) {
                    usrSelectedCards.cardStack.push(usrTable.freecell[idx]);
                    usrTable.freecell[idx] = "Empty";
                    Map<selectedCards, table> temp = new HashMap<selectedCards, table>();
                    temp.put(usrSelectedCards, usrTable);
                    return temp;
                }
            }
        }

        if (usrSelectedCards.card2.equals("")) {
            usrSelectedCards.cardStack
                    .push(usrTable.tableau[usrSelectedCards.sourceIdx]
                    .get(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1));
            usrTable.tableau[usrSelectedCards.sourceIdx]
                    .remove(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1);
        } else {
//            for (int idx = 0; idx < (usrTable.tableau[idx].size() - 1); idx++) {
            for (int idx = 0; idx < (usrTable.tableau[usrSelectedCards.sourceIdx].size()); idx++) {
                if (usrTable.tableau[usrSelectedCards.sourceIdx]
                        .get(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1)
                        .equalsIgnoreCase(usrSelectedCards.getCard2())) {
                    usrSelectedCards.cardStack
                            .push(usrTable.tableau[usrSelectedCards.sourceIdx]
                            .get(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1));
                    usrTable.tableau[usrSelectedCards.sourceIdx]
                            .remove(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1);
                    break;
                } else {
                    usrSelectedCards.cardStack
                            .push(usrTable.tableau[usrSelectedCards.sourceIdx]
                            .get(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1));
                    usrTable.tableau[usrSelectedCards.sourceIdx]
                            .remove(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1);
                }
            }
        }

        Map<selectedCards, table> temp = new HashMap<selectedCards, table>();
        temp.put(usrSelectedCards, usrTable);
        return temp;
    }

    public static Map<selectedCards, table> moveCards(Map<selectedCards, table> mapInp, Map<String, Integer> cardVal) {
        selectedCards usrSelectedCards = null;
        table usrTable = null;
        for (Map.Entry<selectedCards, table> tempVar : mapInp.entrySet()) {
            usrSelectedCards = tempVar.getKey();
            usrTable = tempVar.getValue();
        }
        assert usrTable != null;
        ArrayList<String>[] tableau = usrTable.tableau;

        assert usrSelectedCards != null;
        if (usrSelectedCards.destinationCard.equalsIgnoreCase("FC")) {
            for (int idx = 0; idx < 4; idx++) {
                if (usrTable.freecell[idx].equalsIgnoreCase("Empty")
                        || usrTable.freecell[idx].isEmpty()
                        || usrTable.freecell[idx].equalsIgnoreCase("")) {
                    usrTable.freecell[idx] = usrSelectedCards.cardStack.pop();
                    break;
                }
            }
        }
        else if (usrSelectedCards.destinationCard.equalsIgnoreCase("FD")) {
            int FDIdx;

            switch (usrSelectedCards.card1.toLowerCase().charAt(0)) {
                case 'h': FDIdx = 0; break;
                case 'c': FDIdx = 1; break;
                case 'd': FDIdx = 2; break;
                case 's': FDIdx = 3; break;
                default: throw new IllegalStateException("Unexpected value: " + usrSelectedCards.card1.toLowerCase().charAt(0));
            }

            usrTable.foundation[FDIdx].push(usrSelectedCards.card1);
        }
        else if (usrSelectedCards.destinationCard.equalsIgnoreCase("TB")) {
            int TBIdx = 0;
            for (int idx = 0; idx < 8; idx++) {
                if (usrTable.tableau[idx].isEmpty()) {
                    TBIdx = idx;
                    break;
                }
            }

            while (!usrSelectedCards.cardStack.isEmpty()) {
                usrTable.tableau[TBIdx].add(usrSelectedCards.cardStack.pop());
            }
        }
        else {
            int tableauIdx = 0;

            for (int idx = 0; idx < 8; idx++) {
                if (!usrTable.tableau[idx].isEmpty()
                        && usrTable.tableau[idx].get(usrTable.tableau[idx].size()-1).equalsIgnoreCase(usrSelectedCards.destinationCard)) {
                    tableauIdx = idx;
                    break;
                }
            }

            while (!usrSelectedCards.cardStack.isEmpty()) {
                usrTable.tableau[tableauIdx].add(usrSelectedCards.cardStack.pop());
            }
        }

        Map<selectedCards, table> temp = new HashMap<>();
        temp.put(usrSelectedCards, usrTable);

        return temp;
    }

    public static int getSuitIdx(String card) {
        switch (card.toLowerCase().charAt(0)) {
            case 'h': return 0;
            case 'c': return 1;
            case 'd': return 2;
            case 's': return 3;
            default: throw new IllegalStateException("Unexpected value: " + card);
        }
    }

    public static Map<selectedCards, table> autoMoveCardsToFoundation(Map<selectedCards, table> mapInp, Map<String, Integer> cardVal) {
        selectedCards usrSelectedCards = null;
        table usrTable = null;
        for (Map.Entry<selectedCards, table> tempVar : mapInp.entrySet()) {
            usrSelectedCards = tempVar.getKey();
            usrTable = tempVar.getValue();
        }

//        for (int tableauIdx = 0; tableauIdx < 8; tableauIdx++) {
//            assert usrTable != null;
//            if (usrTable.tableau[tableauIdx] != null
//                    && !usrTable.tableau[tableauIdx].isEmpty()
//                    && usrTable.tableau[tableauIdx].size() != 0) {
//                String tableauCard = usrTable.tableau[tableauIdx].get(usrTable.tableau[tableauIdx].size() - 1);
//                if (usrTable.foundation[getSuitIdx(tableauCard)].isEmpty()
//                        && tableauCard.toLowerCase().charAt(1) == 'a') {
//                    usrTable.foundation[getSuitIdx(tableauCard)].push(tableauCard);
//                    usrTable.tableau[tableauIdx].remove(usrTable.tableau[tableauIdx].size() - 1);
////                    noExit = true;
//                } else if (!usrTable.foundation[getSuitIdx(tableauCard)].isEmpty()
//                        && (cardVal.get(Character.toString(tableauCard.charAt(1)))
//                        - cardVal.get(Character.toString(usrTable.foundation[getSuitIdx(tableauCard)].peek().charAt(1))) == 1)) {
//                    usrTable.foundation[getSuitIdx(tableauCard)].push(tableauCard);
//                    usrTable.tableau[tableauIdx].remove(usrTable.tableau[tableauIdx].size() - 1);
////                    noExit = true;
//                }
//            }
//
//            if (tableauIdx == 7) { break; }
//        }
//
//        for (int FCIdx = 0; FCIdx < 4; FCIdx++) {
//            String FCCard = usrTable.freecell[FCIdx];
//            if (!FCCard.equalsIgnoreCase("Empty") && !FCCard.isEmpty()) {
//                if (usrTable.foundation[getSuitIdx(FCCard)].isEmpty()
//                        && FCCard.toLowerCase().charAt(1) == 'a') {
//                    usrTable.foundation[getSuitIdx(FCCard)].push(FCCard);
//                    usrTable.freecell[FCIdx] = "Empty";
////                    noExit = true;
//                } else if (!usrTable.foundation[getSuitIdx(FCCard)].isEmpty()
//                        && (cardVal.get(Character.toString(FCCard.charAt(1)))
//                        - cardVal.get(Character.toString(usrTable.foundation[getSuitIdx(FCCard)].peek().charAt(1)))) == 1) {
//                    usrTable.foundation[getSuitIdx(FCCard)].push(FCCard);
//                    usrTable.freecell[FCIdx] = "Empty";
////                    noExit = true;
//                }
//            }
//
//            if (FCIdx == 3) { break; }
//        }

        boolean noExit = true;

        while (noExit) {
            noExit = false;
            for (int tableauIdx = 0; tableauIdx < 8; tableauIdx++) {
                assert usrTable != null;
                if (usrTable.tableau[tableauIdx] != null
                        && !usrTable.tableau[tableauIdx].isEmpty()
                        && usrTable.tableau[tableauIdx].size() != 0) {
                    String tableauCard = usrTable.tableau[tableauIdx].get(usrTable.tableau[tableauIdx].size() - 1);
                    if (usrTable.foundation[getSuitIdx(tableauCard)].isEmpty()
                            && tableauCard.toLowerCase().charAt(1) == 'a') {
                        usrTable.foundation[getSuitIdx(tableauCard)].push(tableauCard);
                        usrTable.tableau[tableauIdx].remove(usrTable.tableau[tableauIdx].size() - 1);
                        noExit = true;
                    } else if (!usrTable.foundation[getSuitIdx(tableauCard)].isEmpty()
                            && (cardVal.get(Character.toString(tableauCard.charAt(1)))
                            - cardVal.get(Character.toString(usrTable.foundation[getSuitIdx(tableauCard)].peek().charAt(1))) == 1)) {
                        usrTable.foundation[getSuitIdx(tableauCard)].push(tableauCard);
                        usrTable.tableau[tableauIdx].remove(usrTable.tableau[tableauIdx].size() - 1);
                        noExit = true;
                    }
                }

                if (tableauIdx == 7) { break; }
            }

            for (int FCIdx = 0; FCIdx < 4; FCIdx++) {
                String FCCard = usrTable.freecell[FCIdx];
                if (!FCCard.equalsIgnoreCase("Empty") && !FCCard.isEmpty()) {
                    if (usrTable.foundation[getSuitIdx(FCCard)].isEmpty()
                            && FCCard.toLowerCase().charAt(1) == 'a') {
                        usrTable.foundation[getSuitIdx(FCCard)].push(FCCard);
                        usrTable.freecell[FCIdx] = "Empty";
                        noExit = true;
                    } else if (!usrTable.foundation[getSuitIdx(FCCard)].isEmpty()
                            && (cardVal.get(Character.toString(FCCard.charAt(1)))
                            - cardVal.get(Character.toString(usrTable.foundation[getSuitIdx(FCCard)].peek().charAt(1)))) == 1) {
                        usrTable.foundation[getSuitIdx(FCCard)].push(FCCard);
                        usrTable.freecell[FCIdx] = "Empty";
                        noExit = true;
                    }
                }

                if (FCIdx == 3) { break; }
            }
        }

        Map<selectedCards, table> temp = new HashMap<>();
        temp.put(usrSelectedCards, usrTable);

        return temp;
    }

}