package freecellSolutionsWebScrapper;

import freecellGame.*;

import java.util.ArrayList;
import java.util.Map;

public class moveFinder {
    public static void printMoves(ArrayList<selectedCards> usrSelectedCardArrayList) {
        for (selectedCards usrSelectedCards : usrSelectedCardArrayList) {
            if (usrSelectedCards.card2.isEmpty()) {
                System.out.println(moveInp(usrSelectedCards.card1, usrSelectedCards.destinationCard));
            } else {
                System.out.println(moveInp(usrSelectedCards.card1, usrSelectedCards.card2, usrSelectedCards.destinationCard));
            }
        }
    }

    public static String moveInp(String card1, String destinationCard) {
        return ("move " + card1 + " to " + destinationCard);
    }

    public static String moveInp(String card1, String card2, String destinationCard) {
        return ("move " + card1 + " - " + card2 + " to " + destinationCard);
    }

    public static selectedCards findMove(ArrayList<selectedCards> cardMoves, char selectionValue, char destinationValue, Map<String, Integer> cardVal) {
        ArrayList<selectedCards> tempArrList = new ArrayList<selectedCards>();

        for (selectedCards ANNSelectedCards : cardMoves) {
            if (ANNSelectedCards.stdNotationSourceChar == selectionValue
                    && ANNSelectedCards.stdNotationDestinationChar == destinationValue) {
                tempArrList.add(ANNSelectedCards);
            }
        }

        if (tempArrList.size() == 1) {
            return tempArrList.get(0);
        } else if (tempArrList.size() > 1) {
            int cardsMoved = -1;
            selectedCards tempVar = null;

            for (selectedCards ANNSelectedCards : tempArrList) {
                if (!ANNSelectedCards.card2.isEmpty()
                        && (cardVal.get(Character.toString(ANNSelectedCards.card2.charAt(1)))
                        - cardVal.get(Character.toString(ANNSelectedCards.card1.charAt(1))) > cardsMoved)) {

                    cardsMoved = cardVal.get(Character.toString(ANNSelectedCards.card2.charAt(1)))
                            - cardVal.get(Character.toString(ANNSelectedCards.card1.charAt(1)));
                    tempVar = ANNSelectedCards;

                }
            }
            return tempVar;
        } else {
            return null;
        }
    }

    public static ArrayList<selectedCards> movesToArrayList(table usrTable, Map<String, Integer> cardVal,
                                                        Map <Character, Integer> suitVal) {
        ArrayList<selectedCards> usrSelectedCardArrayList = new ArrayList<selectedCards>();
        boolean isEmptyTBColumn = false, isEmptyFC = true;
        int noOfEmptyTBColumns = 0;
        int maxCardsMove = 5;

        for (String card : usrTable.freecell) {
            if (card.equals("") || card.equalsIgnoreCase("Empty")) {
                maxCardsMove -= 1;
            }
        }

        if (maxCardsMove == 1) { isEmptyFC = false; }

        for (ArrayList<String> column : usrTable.tableau) {
            if (column.isEmpty()) {
                isEmptyTBColumn = true;
                noOfEmptyTBColumns = noOfEmptyTBColumns + 1;
            }
        }

        if (isEmptyFC && isEmptyTBColumn) {
            maxCardsMove = maxCardsMove * 2;
        } else if (!isEmptyFC && isEmptyTBColumn) {
            maxCardsMove = (int) Math.pow(2, noOfEmptyTBColumns);
        }

        if (maxCardsMove > 4) { maxCardsMove = 4; }

        // Find card(s)
        // Find destination
        // Add to arraylist
        // Do checks to see if valid
        // Keep remainders in arraylist

        // TB -> TB / Other Cards
        for (int noOfCards = 1; noOfCards <= maxCardsMove; noOfCards++) {
            for (int sourceColumn = 0; sourceColumn < usrTable.tableau.length; sourceColumn++) {
                for (int destinationColumn = 0; destinationColumn < usrTable.tableau.length; destinationColumn++) {
                    if (sourceColumn != destinationColumn
                            && !usrTable.tableau[sourceColumn].isEmpty()) {

                        selectedCards usrSelectedCards = new selectedCards();

                        usrSelectedCards.card1 = usrTable.tableau[sourceColumn]
                                .get(usrTable.tableau[sourceColumn].size() - 1 );
                        usrSelectedCards.stdNotationSourceChar = (char) (sourceColumn + 1);

                        usrSelectedCards.sourceIdx = sourceColumn;
                        if (noOfCards > 1 && usrTable.tableau[sourceColumn].size() >= noOfCards) {
                          usrSelectedCards.card2 = usrTable.tableau[sourceColumn]
                                  .get(usrTable.tableau[sourceColumn].size() - noOfCards);

                          usrSelectedCards.rowIdx = (usrTable.tableau[sourceColumn].size() - noOfCards);
                        }
                        if (noOfCards > 1 && usrTable.tableau[sourceColumn].size() < noOfCards) {
                            continue;
                        }
                        if (!usrTable.tableau[destinationColumn].isEmpty()) {
                            usrSelectedCards.destinationCard = usrTable.tableau[destinationColumn]
                                    .get(usrTable.tableau[destinationColumn].size() - 1);
                        } else {
                            usrSelectedCards.destinationCard = "TB";
                        }
                        usrSelectedCards.stdNotationDestinationChar = (char) (destinationColumn + 1);

                        usrSelectedCardArrayList.add(usrSelectedCards);
                    } else {
                        continue;
                    }
                }
            }
        }

        // TB -> FC
        for (int sourceColumn = 0; sourceColumn < usrTable.tableau.length; sourceColumn++) {
            if (!usrTable.tableau[sourceColumn].isEmpty()) {
                selectedCards usrSelectedCards = new selectedCards();

                usrSelectedCards.card1 = usrTable.tableau[sourceColumn]
                        .get(usrTable.tableau[sourceColumn].size() - 1);
                usrSelectedCards.stdNotationSourceChar = (char) (sourceColumn + 1);

                usrSelectedCards.sourceIdx = sourceColumn;


                usrSelectedCards.destinationCard = "FC";
                usrSelectedCards.stdNotationDestinationChar = 'F';
                usrSelectedCardArrayList.add(usrSelectedCards);

                for (int FCIdx = 0; FCIdx < 4; FCIdx++) {
                    String FCValue = usrTable.freecell[FCIdx];

                    if (!FCValue.isEmpty() && !FCValue.equalsIgnoreCase("Empty")) {
                        if (FCIdx == 0) { usrSelectedCards.stdNotationDestinationChar = 'a'; }
                        if (FCIdx == 1) { usrSelectedCards.stdNotationDestinationChar = 'b'; }
                        if (FCIdx == 2) { usrSelectedCards.stdNotationDestinationChar = 'c'; }
                        if (FCIdx == 3) { usrSelectedCards.stdNotationDestinationChar = 'd'; }

                    }
                }
                usrSelectedCardArrayList.add(usrSelectedCards);
            }
        }

        // TB -> FD
        for (int sourceColumn = 0; sourceColumn < usrTable.tableau.length; sourceColumn++) {
            if (!usrTable.tableau[sourceColumn].isEmpty()) {
                selectedCards usrSelectedCards = new selectedCards();

                usrSelectedCards.card1 = usrTable.tableau[sourceColumn]
                        .get(usrTable.tableau[sourceColumn].size() - 1);
                usrSelectedCards.stdNotationSourceChar = (char) (sourceColumn + 1);

                usrSelectedCards.sourceIdx = sourceColumn;

                usrSelectedCards.destinationCard = "FD";
                usrSelectedCards.stdNotationDestinationChar = 'H';

                usrSelectedCardArrayList.add(usrSelectedCards);
            }
        }

        // FC -> FD
        for (int FCIdx = 0; FCIdx < 4; FCIdx++) {
            if (!usrTable.freecell[FCIdx].isEmpty()
                    && !usrTable.freecell[FCIdx].equalsIgnoreCase("Empty")) {
                selectedCards usrSelectedCards = new selectedCards();

                usrSelectedCards.card1 = usrTable.freecell[FCIdx];
                usrSelectedCards.stdNotationSourceChar = 'F';

                usrSelectedCards.sourceIdx = -1;

                usrSelectedCards.destinationCard = "FD";
                usrSelectedCards.stdNotationDestinationChar = 'H';

                usrSelectedCardArrayList.add(usrSelectedCards);

                if (FCIdx == 0) { usrSelectedCards.stdNotationSourceChar = 'a'; }
                if (FCIdx == 1) { usrSelectedCards.stdNotationSourceChar = 'b'; }
                if (FCIdx == 2) { usrSelectedCards.stdNotationSourceChar = 'c'; }
                if (FCIdx == 3) { usrSelectedCards.stdNotationSourceChar = 'd'; }

                usrSelectedCardArrayList.add(usrSelectedCards);
            }
        }

        // FC -> TB / Other Cards
        for (int FCIdx = 0; FCIdx < 4; FCIdx++) {
            for (int destinationColumn = 0; destinationColumn < usrTable.tableau.length; destinationColumn++) {
                if (!usrTable.freecell[FCIdx].isEmpty()
                        && !usrTable.freecell[FCIdx].equalsIgnoreCase("Empty")) {
                    selectedCards usrSelectedCards = new selectedCards();

                    usrSelectedCards.card1 = usrTable.freecell[FCIdx];
                    usrSelectedCards.stdNotationSourceChar = 'F';

                    usrSelectedCards.sourceIdx = -1;

                    if (!usrTable.tableau[destinationColumn].isEmpty()) {
                        usrSelectedCards.destinationCard = usrTable.tableau[destinationColumn]
                                .get(usrTable.tableau[destinationColumn].size() - 1);
                    } else {
                        usrSelectedCards.destinationCard = "TB";
                    }
                    usrSelectedCards.stdNotationDestinationChar = (char) (destinationColumn + 1);

                    usrSelectedCardArrayList.add(usrSelectedCards);

                    if (FCIdx == 0) { usrSelectedCards.stdNotationSourceChar = 'a'; }
                    if (FCIdx == 1) { usrSelectedCards.stdNotationSourceChar = 'b'; }
                    if (FCIdx == 2) { usrSelectedCards.stdNotationSourceChar = 'c'; }
                    if (FCIdx == 3) { usrSelectedCards.stdNotationSourceChar = 'd'; }

                    usrSelectedCardArrayList.add(usrSelectedCards);
                }
            }
        }

        ArrayList<selectedCards> noDuplicatesArrayList = new ArrayList<selectedCards>();

        for (selectedCards tempVar : usrSelectedCardArrayList) {
            if (!noDuplicatesArrayList.contains(tempVar)) {
                noDuplicatesArrayList.add(tempVar);
            }
        }


        usrSelectedCardArrayList = null;


        ArrayList<selectedCards> validAndLegalMovesArrayList = new ArrayList<selectedCards>();

        for (int idx = 0; idx < noDuplicatesArrayList.size(); idx++) {
            if (inputAnalysis.isLegalInp(noDuplicatesArrayList.get(idx),
                    cardVal, suitVal, usrTable.freecell, usrTable.foundation, usrTable)
                    && inputAnalysis.moveValid((noDuplicatesArrayList.get(idx)),
                    usrTable, cardVal, suitVal)) {

                validAndLegalMovesArrayList.add(noDuplicatesArrayList.get(idx));

            }
        }

        return validAndLegalMovesArrayList;
    }
}
