package freecellGame;
import java.util.*;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;

public class inputAnalysis {

    /**
     * <h1>The input analysis code</h1>
     * This code analyses the user input and breaks it up into tokens for later processing.
     *
     * @param usrInp The user input
     * @param tokens A queue that will hold tokens in a FIFO approach.
     * @calledBy freecellGame.game
     * @since 2021-09-26
     */

    public static Queue<String> tokenizer(String usrInp, Queue<String> tokens) {
        // Creates an empty string used for character concatenation
        String tempStr = "";

        // Creates a character variable for temporarily holding a
        // single character from the user input variable
        char inpChar;

        // Creates a character iterator variable that iterates through the user input variable
        CharacterIterator inpItr = new StringCharacterIterator(usrInp);

        // Runs while there is a character to read
        while (inpItr.current() != CharacterIterator.DONE) {

            // Takes the current character and places it into a separate variable
            inpChar = inpItr.current();

            // A switch statement for the inpChar
            switch (inpChar) {
                case ' ':
                    // Checks to see if the string is not empty
                    if (!tempStr.isEmpty()) {
                        // Adds the string as a token to the token queue
                        // This is because an empty space would imply that that the iterator
                        // Has reached the end of a token
                        tokens.add(tempStr);

                        // Resets the token holder for the next iteration
                        tempStr = "";
                    } else {
//                        // Concatenates the character to the temporary string variable
//                        tempStr += inpChar;
                    }
                    break;
                case '-':
                    // Exists so usrSelectedCards.sourceIdx that if the user inputs without any spaces,
                    // The token will be added to the queue before the hyphen
                    if (!tempStr.isEmpty()) {
                        tokens.add(tempStr);
                    }

                    // Adds the hyphen to the queue
                    tokens.add("-");

                    // Exists in case the variable held a token during the current iteration
                    tempStr = "";
                    break;
                default:

                    // Adds the character to the temporary string variable
                    tempStr += inpChar;
                    break;
            }

            // Iterates to the next character in the user input string iterator
            inpItr.next();
        }

        if (!tempStr.isEmpty()) {
            tokens.add(tempStr);
        }

        // Returns the tokens to playGame
        return tokens;
    }

    /**
     * <h1>The token analysis code</h1>
     * This code extracts information from the tokens and feeds the information into a freecellGame.usrSelectedCards object.
     *
     * @param usrSelectedCards The user input
     * @param tokens           A queue that will hold tokens in a FIFO structure.
     * @calledBy freecellGame.freecellGame
     * @since 2021-09-26
     */

    public static selectedCards parser(selectedCards usrSelectedCards, Queue<String> tokens,
                                       Map<String, Integer> cardVal) {
        // Resets the invalidInp variable as the parser function is only called once a new user input is placed
        usrSelectedCards.setInvalidInp(false);

        // Example input: tokens = "move", "DA", "-", "DK", "to", "C3"
        // "FC" means a freecell, "FD" means foundation, "TB" means tableau

        // Ensures that only the exact amount of tokens are present
        if (tokens.size() == 4 || tokens.size() == 6) {
            // Ensures that the syntax is correct
            if (tokens.peek().equalsIgnoreCase("move")) {
                tokens.remove();
                // Updated collection: tokens = "DA", "-", "DK", "to", "C3"
            } else {
                usrSelectedCards.setInvalidInp(true);
                return usrSelectedCards;
            }

            // Ensures that the syntax of the card input is correct
            if (tokens.peek().length() > 1 &&
                    cardVal.containsKey(Character.toString(tokens.peek().charAt(1)))) {
                usrSelectedCards.setCard1(tokens.poll());
                // Updated collection: tokens = "-", "DK", "to", "C3"
            } else {
                usrSelectedCards.setInvalidInp(true);
                return usrSelectedCards;
            }

            if (tokens.peek().equals("-")) {
                tokens.remove();
                // Updated collection: tokens = "DK", "to", "C3"
                // Ensures that the syntax of the card input is correct
                if (tokens.peek().length() > 1
                        && cardVal.containsKey(Character.toString(tokens.peek().replaceAll(" ", "").charAt(1)))) {
                    usrSelectedCards.setCard2(tokens.poll());
                    // Updated collection: tokens = "to", "C3"
                    // Else block exists to ensure that the function ends early in case the syntax is incorrect
                } else {
                    usrSelectedCards.setInvalidInp(true);
                    return usrSelectedCards;
                }
            } // Lacks an else statement as the user may only want to move on card
            // Hence an else block is not necessary

            // Ensures that the syntax is correct
            if (tokens.peek().equalsIgnoreCase("to")) {
                tokens.remove();
                // Updated collection: tokens = "C3"
            } else {
                usrSelectedCards.setInvalidInp(true);
                return usrSelectedCards;
            }

            // Ensures that the syntax of the card input is correct
            if (tokens.peek().length() > 1
                    && (tokens.peek().equalsIgnoreCase("FC")
                    || tokens.peek().equalsIgnoreCase("FD")
                    || tokens.peek().equalsIgnoreCase("TB")
                    || cardVal.containsKey(Character.toString(tokens.peek().charAt(1))))) {
                usrSelectedCards.setDestinationCard(tokens.poll());
                // Updated collection: tokens = (empty)
            } else {
                usrSelectedCards.setInvalidInp(true);
                return usrSelectedCards;
            }

        } else {
            usrSelectedCards.setInvalidInp(true);
            return usrSelectedCards;
        }

        return usrSelectedCards;
    }

    /**
     * <h1>The token data validation code</h1>
     * This code ensures that the information feed the into a freecellGame.usrSelectedCards object
     * Is sensible and follows the rules of Freecell.
     *
     * @param usrSelectedCards The user input
//     * @param tokens           A queue that will hold tokens in a FIFO structure.
     * @calledBy freecellGame.freecellGame
     * @since 2021-09-26
     */

    public static boolean isLegalInp(selectedCards usrSelectedCards, Map<String, Integer> cardVal, Map<Character, Integer> suitVal, String[] freecell,
                                     Stack<String>[] foundation, table usrTable) {

        // Checks if the player plans to move a card(s) to the foundation, a freecell, or to a position on the tableau
        if (!usrSelectedCards.destinationCard.equalsIgnoreCase("FC")
                && !usrSelectedCards.destinationCard.equalsIgnoreCase("FD")) {

            if (!usrSelectedCards.destinationCard.equalsIgnoreCase("TB")) {

                // Code block checks to see that card value matches the card destination
                // If statement checks to see if multiple cards are being moved, or just one, and then adjusts
                // The branch of execution accordingly
                if (!usrSelectedCards.card2.equals("")) {
                    // Short-circuit evaluation prevents runtime error
                    // Hard coded as only checking the character at the 1st index could imply that a 1 or a 10
                    if (usrSelectedCards.card2.length() == 3 && usrSelectedCards.card2.substring(1, 3).equals("10")) {
                        if (usrSelectedCards.getDestinationCard().length() != 2
                                || usrSelectedCards.getDestinationCard().charAt(1) != 'J') {
                            return false;
                        }
                        // Short-circuit evaluation prevents runtime error
                        // Hard coded as a 9 can only be placed on a 10
                    } else if (usrSelectedCards.card2.length() == 2 && usrSelectedCards.card2.charAt(1) == '9') {
                        // Short-circuit evaluation prevents runtime error
                        if (usrSelectedCards.getDestinationCard().length() != 3
                                || !usrSelectedCards.getDestinationCard().substring(1, 3).equals("10")) {
                            return false;
                        }
                    } else {
                        // Checks to see if the difference between the destination card
                        // And the top card that you plan to place is 1
                        if (usrSelectedCards.card2.length() != 2
                                || (cardVal.get(Character.toString(usrSelectedCards.destinationCard.charAt(1)))
                                - cardVal.get(Character.toString(usrSelectedCards.card2.charAt(1))) != 1)) {
                            return false;
                        }
                    }
                } else {
                    // Short-circuit evaluation prevents runtime error
                    // Hard coded as only checking the character at the 1st index could imply that a 1 or a 10
                    if (usrSelectedCards.card1.length() == 3 && usrSelectedCards.card1.substring(1, 3).equals("10")) {
                        if (usrSelectedCards.getDestinationCard().length() != 2
                                || usrSelectedCards.getDestinationCard().charAt(1) != 'J') {
                            return false;
                        }
                        // Short-circuit evaluation prevents runtime error
                        // Hard coded as a 9 can only be placed on a 10
                    } else if (usrSelectedCards.card1.length() == 2 && usrSelectedCards.card1.charAt(1) == '9') {
                        if (usrSelectedCards.getDestinationCard().length() != 3
                                || !usrSelectedCards.getDestinationCard().substring(1, 3).equals("10")) {
                            return false;
                        }
                    } else {
                        // Checks to see if the difference between the destination card
                        // And the card that you plan to place is 1
                        if (usrSelectedCards.card1.length() != 2
                                || (cardVal.get(Character.toString(usrSelectedCards.destinationCard.charAt(1)))
                                - cardVal.get(Character.toString(usrSelectedCards.card1.charAt(1))) != 1)) {
                            return false;
                        }
                    }
                }

                // Code block checks to see that suit value matches the card destination
                // If statement checks to see if multiple cards are being moved, or just one, and then adjusts
                // The branch of execution accordingly
                if (!usrSelectedCards.card2.equals("")) {
                    // Works as odd + odd = even, even + even = even, and even + odd = odd
                    // Even index means red, odd index means black, so suit values added up should be odd
                    if ((suitVal.get(usrSelectedCards.card2.charAt(0))
                            + suitVal.get(usrSelectedCards.destinationCard.charAt(0))) % 2 != 1) {
                        return false;
                    }
                } else {
                    // Works as odd + odd = even, even + even = even, and even + odd = odd
                    // Even index means red, odd index means black, so suit values added up should be odd
                    if ((suitVal.get(usrSelectedCards.card1.charAt(0))
                            + suitVal.get(usrSelectedCards.destinationCard.charAt(0))) % 2 != 1) {
                        System.out.println(suitVal.get(usrSelectedCards.card1.charAt(0))
                                + suitVal.get(usrSelectedCards.destinationCard.charAt(0)));
                        return false;
                    }
                }

            }

            if (usrSelectedCards.destinationCard.equalsIgnoreCase("TB")) {
                boolean columnFree = false;
                for (ArrayList<String> tableauColumn : usrTable.tableau){
                    if (tableauColumn.isEmpty()) { columnFree = true; break; }
                }
                if (!columnFree) {
                    return false;
                }
            }


            // Code block checks to see if the number of cards desired to be moved is legal
            // If statement checks to see if multiple cards are being moved, or just one, and then adjusts
            // The branch of execution accordingly
            if (!usrSelectedCards.card2.equals("")) {
                int tempVar = 5;
                for (String card : freecell) {
                    if (card.equalsIgnoreCase("Empty") || card.isEmpty()) {
                        tempVar -= 1;
                    }
                }

                if (usrSelectedCards.card1.length() == 3 && usrSelectedCards.card2.length() == 3) {
                    return false;
                } else if (usrSelectedCards.card1.length() == 3) {
                    return ((cardVal.get(Character.toString(usrSelectedCards.card2.charAt(1))) - 10) + 1 <= tempVar);
                } else if (usrSelectedCards.card2.length() == 3) {
                    return ((10 - cardVal.get(Character.toString(usrSelectedCards.card1.charAt(1)))) + 1 <= tempVar);
                } else {
                    return ((cardVal.get(Character.toString(usrSelectedCards.card2.charAt(1)))
                            - cardVal.get(Character.toString(usrSelectedCards.card1.charAt(1)))) + 1 <= tempVar);
                }

            } else {
                return true;
            }


        }
        else if (usrSelectedCards.destinationCard.equalsIgnoreCase("FC")) {
            if (usrSelectedCards.card2.equals("")) {
                for (String tempVar : freecell) {
                    if (tempVar == null || tempVar.equals("Empty") || tempVar.equalsIgnoreCase("")) {
                        return true;
                    }
                }
                return false;
            } else {
                return false;
            }
        }
        else if (usrSelectedCards.destinationCard.equalsIgnoreCase("FD")) {
            if (usrSelectedCards.card2.equals("")) {
                int FDIdx;

                switch (usrSelectedCards.card1.toLowerCase().charAt(0)) {
                    case 'h': FDIdx = 0; break;
                    case 'c': FDIdx = 1; break;
                    case 'd': FDIdx = 2; break;
                    case 's': FDIdx = 3; break;
                    default: FDIdx = -1; break;
                }

                if (FDIdx == -1) {
                    return false;
                } else {
                    if (!foundation[FDIdx].isEmpty() && usrSelectedCards.card1.toLowerCase().charAt(1) != 'a') {
                        return ((cardVal.get(Character.toString(usrSelectedCards.card1.charAt(1)))
                                - cardVal.get(Character.toString(foundation[FDIdx].peek().charAt(1)))) == 1);
//                        return (cardVal.get(Character.toString(foundation[FDIdx].peek().charAt(1)))
//                                - cardVal.get(Character.toString(usrSelectedCards.card1.charAt(1))) == 1);
                    } else if (!foundation[FDIdx].isEmpty() && usrSelectedCards.card1.toLowerCase().charAt(1) == 'a') {
                        return false;
                    } else {
                        return usrSelectedCards.card1.toLowerCase().charAt(1) == 'a';
                    }
                }
            } else { return false; }

        }
        else {
            return false;
        }
    }

    public static boolean moveValid(selectedCards usrSelectedCards, table usrTable, Map<String, Integer> cardVal, Map<Character, Integer> suitVal) {
        // Code block checks to see if the set of cards desired to be moved
        // Is a proper set
        if (!usrSelectedCards.card2.equals("") && usrSelectedCards.sourceIdx != -1) {
            ArrayList<String> tempArrList = new ArrayList<String>();

            // Populates the ArrayList with the cards that the user intends to move
            for (int idx = 0; idx < (usrTable.tableau[usrSelectedCards.sourceIdx].size()); idx++) {
                if (usrTable.tableau[usrSelectedCards.sourceIdx]
                        .get(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1 - idx)
                        .equalsIgnoreCase(usrSelectedCards.getCard2())) {

                    tempArrList.add(usrTable.tableau[usrSelectedCards.sourceIdx]
                            .get(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1 - idx));

                    break;
                } else {

                    tempArrList.add(usrTable.tableau[usrSelectedCards.sourceIdx]
                            .get(usrTable.tableau[usrSelectedCards.sourceIdx].size() - 1 - idx));
                }
            }


            for (int idx = 0; idx < (tempArrList.size() - 1); idx++) {
                // Because the order of the cards has now been reversed
                // (As the previous loop extracted cards from bottom (array.length - 1) to top (idx = 0),
                // which means that the added cards now go from top to bottom)
                // In other words, the card with the smallest value is now at the top
                // and the largest value card is now at the bottom
                // The if statement now compares to the +1 index element
                if ((cardVal.get(Character.toString(tempArrList.get(idx + 1).charAt(1)))
                        - cardVal.get(Character.toString(tempArrList.get(idx).charAt(1))) != 1)
                        && (suitVal.get(tempArrList.get(idx + 1).charAt(0))
                        + suitVal.get(tempArrList.get(idx).charAt(0))) % 2 != 1) {
                    return false;
                }
            }
        }

        if (!usrSelectedCards.destinationCard.equalsIgnoreCase("FC")
                && !usrSelectedCards.destinationCard.equalsIgnoreCase("FD")
                && !usrSelectedCards.destinationCard.equalsIgnoreCase("TB")) {
            for (ArrayList<String> tableauColumn : usrTable.tableau){
                if (!tableauColumn.isEmpty() && tableauColumn.get(tableauColumn.size() - 1)
                        .equalsIgnoreCase(usrSelectedCards.destinationCard)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }
}

