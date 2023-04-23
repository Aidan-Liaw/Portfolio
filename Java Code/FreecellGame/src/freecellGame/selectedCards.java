package freecellGame;
import java.util.Stack;

public class selectedCards {

    /**
     * <h1>The user selected cards class code</h1>
     * This exists to hold information relevant to card moving, and whether it is possible
     * Contains: <blockquote>
     * - card1, the card to the moved to another card column,
     *   or the card at the bottom of a list of cards to be moved <p>
     * </p>
     * - card2, the card at the top of a list of cards
     *   to be moved to another card column if multiple cards have been selected <p>
     * </p>
     * - destinationCard, the card location where a card(s) will be moved to <p>
     * </p>
     * - columnIdx, the column of the location of the card(s) to be moved <p>
     * </p>
     * - rowIdx, the row of the location of card2 if multiple cards are to be moved <p>
     * </p>
     * - cardStack, a stack of cards to be moved to a different position, uses a FILO approach <p>
     * </p>
     * - invalidInp, a boolean variable that is true if the user input cannot be processed <p>
     * </p>
     * - invalidMove, a boolean variable that is true if the card move is illegal <p>
     * </p></blockquote>
     * @since 2021-09-25
     */


    public String card1, card2, destinationCard, stdNotationMove;
    public int rowIdx, sourceIdx;
    // Is a stack as the desired cards will be placed into the collection from the bottom up
    Stack<String> cardStack;
    public boolean invalidInp, invalidMove;
    public int stdNotationSourceChar, stdNotationDestinationChar;

    /**
     * <h1>The only constructor for the user selected cards class</h1>
     */
    public selectedCards() {
        card1 = "";
        card2 = "";
        destinationCard = "";
        rowIdx = 0;
        sourceIdx = 0;
        cardStack = new Stack<String>();
        invalidInp = false;
        invalidMove = false;
        stdNotationSourceChar = 0 ;
        stdNotationDestinationChar = 0 ;
        stdNotationMove = "";
    }

    public String getCard1() { return card1; }
    public String getCard2() { return card2; }
    public String getDestinationCard() { return destinationCard; }
    public Stack<String> getCardStack() { return cardStack; }
    public int getRowIdx() { return rowIdx; }
    public int getSourceIdx() { return sourceIdx; }
    public boolean isInvalidInp() { return invalidInp; }
    public boolean isInvalidMove() { return invalidMove; }
    public int getStdNotationSourceChar() { return stdNotationSourceChar; }
    public int getStdNotationDestinationChar() { return stdNotationDestinationChar; }
    public String getStdNotationMove() { return stdNotationMove; }

    public void setCard1(String card1) { this.card1 = card1; }
    public void setCard2(String card2) { this.card2 = card2; }
    public void setDestinationCard(String destinationCard) { this.destinationCard = destinationCard; }
    public void setRowIdx(int rowIdx) { this.rowIdx = rowIdx; }
    public void setSourceIdx(int sourceIdx) { this.sourceIdx = sourceIdx; }
    public void setInvalidInp(boolean invalidInp) { this.invalidInp = invalidInp; }
    public void setInvalidMove(boolean invalidMove) { this.invalidMove = invalidMove; }
    public void setStdNotationSourceChar(int stdNotationSourceChar) { this.stdNotationSourceChar = stdNotationSourceChar; }
    public void setStdNotationDestinationChar(int stdNotationDestinationChar) { this.stdNotationDestinationChar = stdNotationDestinationChar; }
    public void setStdNotationMove(String stdNotationMove) { this.stdNotationMove = stdNotationMove; }

}
