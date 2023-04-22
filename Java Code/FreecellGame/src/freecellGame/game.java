package freecellGame;
import java.util.*;

public class game {
    public static Queue<String> tokens;
    public static Scanner strInp;
    public static Map<selectedCards, table> temp;
    public static boolean changeMade;
    public static boolean gameWon;

    public game() {
        tokens = new LinkedList<>();
        strInp = new Scanner(System.in);
        temp = new HashMap<selectedCards, table>();
        gameWon = false;
    }

    public static void step(table usrTable, Map <String, Integer> cardVal,
                            Map <Character, Integer> suitVal, selectedCards usrSelectedCards) {
        tokens = new LinkedList<>();
        temp = new HashMap<selectedCards, table>();
        changeMade = true;

        if (!usrSelectedCards.invalidInp && inputAnalysis.isLegalInp(usrSelectedCards,
                cardVal, suitVal, usrTable.freecell, usrTable.foundation, usrTable)) {
            usrSelectedCards = table.findCards(usrTable, usrSelectedCards, usrTable.tableau);
            if (usrSelectedCards.sourceIdx != -2 && inputAnalysis.moveValid(usrSelectedCards, usrTable, cardVal, suitVal)) {
                temp.put(usrSelectedCards, usrTable);
                temp = table.getCards(temp);
                temp = table.moveCards(temp, cardVal);
                temp = table.autoMoveCardsToFoundation(temp, cardVal);
                for (Map.Entry<selectedCards, table> tempVar : temp.entrySet()) {
                    usrSelectedCards = tempVar.getKey();
                    usrTable = tempVar.getValue();
                }
            } else {
                changeMade = false;
            }

        } else {
            changeMade = false;
        }

        if (!usrTable.foundation[0].isEmpty()
                && !usrTable.foundation[1].isEmpty()
                && !usrTable.foundation[2].isEmpty()
                && !usrTable.foundation[3].isEmpty()
                && usrTable.foundation[0].peek().toLowerCase().charAt(1) == 'k'
                && usrTable.foundation[1].peek().toLowerCase().charAt(1) == 'k'
                && usrTable.foundation[2].peek().toLowerCase().charAt(1) == 'k'
                && usrTable.foundation[3].peek().toLowerCase().charAt(1) == 'k') {
            gameWon = true;
        }

    }


    /**
     * <h1>The Freecell game connective code</h1>
     * This connects all the other functions together to allow for easier reading.
     * It calls functions that relate to the logic needed to play freecell.
     * @param usrTable An object holding all the cards that would be present on a real freecellGame.table.
     *                 Instantiation of freecellGame.table class.
     *                 Contains: <blockquote>
     *                  - tableau, where the cards are first placed, is the playing area <p>
     *                 </p>
     *                  - freecell, where cards are temporarily placed during card manipulation <p>
     *                 </p>
     *                  - foundation, where all cards must go to win the game <p>
     *                 </p>
     *                  - tableauItr, an array of iterators for each column of the tableau <p>
     *                 </p></blockquote>
     * @param cardVal A map that correlates a card's value to a integer value for comparison later on.
     * @since 2021-07-30
     * @calledBy freecellGame.cardMain
     */

    public static void playGame (table usrTable, Map <String, Integer> cardVal,
                                 Map <Character, Integer> suitVal){
        Queue<String> tokens; // Holds the tokens created from the tokenizer
        selectedCards usrSelectedCards;
        Scanner strInp = new Scanner(System.in); // Declares scanner for String input
//        Stack<String> takenCards; // Holds the cards taken from the tableau for movement
        while (true) {
            // Prints out the cards in the freecells and foundation
            table.headerInfoPrint(usrTable.freecell, usrTable.foundation);

            // Prints out the cards in the tableau
            table.tableauPrint(usrTable.tableauItr, usrTable.tableau);

            /*
            Input follows the structure: move [card1] to [nextPosition]
            or, move [card1]-[card2] to [nextPosition]
             */
            String usrInp = null;

            while (usrInp == null || usrInp.replaceAll(" ", "").equalsIgnoreCase("")
                    || usrInp.isEmpty() || usrInp.equalsIgnoreCase("\n")) {
                usrInp = strInp.nextLine();
            }

            // Holds the tokens created from the user input, will be used as a queue
            tokens = new LinkedList<>();

            // Creates tokens from the user input
            tokens = inputAnalysis.tokenizer(usrInp, tokens);

            // Creates an object which holds user selected cards and their attributes
            usrSelectedCards = new selectedCards();

            // Parses the tokens to determine what cards the user has chosen to select
            // and where they should go
            usrSelectedCards = inputAnalysis.parser(usrSelectedCards, tokens, cardVal);

            Map<selectedCards, table> temp = new HashMap<selectedCards, table>();


            if (!usrSelectedCards.invalidInp && inputAnalysis.isLegalInp(usrSelectedCards,
                    cardVal, suitVal, usrTable.freecell, usrTable.foundation, usrTable)) {
                 usrSelectedCards = table.findCards(usrTable, usrSelectedCards, usrTable.tableau);
                 if (usrSelectedCards.sourceIdx != -2 && inputAnalysis.moveValid(usrSelectedCards, usrTable, cardVal, suitVal)) {
                     temp.put(usrSelectedCards, usrTable);
                     temp = table.getCards(temp);
                     temp = table.moveCards(temp, cardVal);
                     temp = table.autoMoveCardsToFoundation(temp, cardVal);
                     for (Map.Entry<selectedCards, table> tempVar : temp.entrySet()) {
                         usrSelectedCards = tempVar.getKey();
                         usrTable = tempVar.getValue();
                     }
                 } else {
                     System.out.println("\nInput is incorrect, please try again. Press any key to continue");
                     strInp.nextLine();
                 }

            } else {
                System.out.println("\nInput is incorrect, please try again. Press any key to continue");
                strInp.nextLine();
            }

            if (!usrTable.foundation[0].isEmpty()
                    && !usrTable.foundation[1].isEmpty()
                    && !usrTable.foundation[2].isEmpty()
                    && !usrTable.foundation[3].isEmpty()
                    && usrTable.foundation[0].peek().toLowerCase().charAt(1) == 'k'
                    && usrTable.foundation[1].peek().toLowerCase().charAt(1) == 'k'
                    && usrTable.foundation[2].peek().toLowerCase().charAt(1) == 'k'
                    && usrTable.foundation[3].peek().toLowerCase().charAt(1) == 'k') {
                break;
            }

        }

        System.out.println("Game over! Thanks for playing!");
    }
}
