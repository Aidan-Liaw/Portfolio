package freecellSolutionsWebScrapper;

import freecellGame.cardLogic;
import freecellGame.msShuffler;
import freecellGame.selectedCards;
import freecellGame.table;

import java.util.*;

public class moveFinderDriver {
    public static void main(String[] args) {
        System.out.println("Hello World!");

        // Creates a map that correlates string values to integer values
        Map<String, Integer> cardVal = new HashMap<String, Integer>();

        // Initialise the values for the map
        cardLogic.cardValInit(cardVal);

        // Creates a map that correlates suit values to integer values
        Map<Character, Integer> suitVal = new HashMap<Character, Integer>();

        // Initialise the values for the map
        cardLogic.suitInit(suitVal);

        // Holds the cards
        String[] deck;

        // Initialises the values for the deck
        deck = cardLogic.deckCreate();

        // Shuffles the values in the deck
//        deck = cardLogic.deckShuffle(deck);
        msShuffler cardShuffler = new msShuffler();
        deck = cardShuffler.dealGame(3);
        Collections.reverse(Arrays.asList(deck));

        /*
        Instantiates a freecellGame.table object, containing a:
         - tableau, where the cards are first placed, is the playing area
         - freecell, where cards are temporarily placed during card manipulation
         - foundation, where all cards must go to win the game
         - tableauItr, an array of iterators for each column of the tableau
         */
        table usrTable = new table(deck);

        ArrayList<selectedCards> usrSelectedCardArrayList = new ArrayList<selectedCards>();

        usrSelectedCardArrayList = moveFinder.movesToArrayList(usrTable, cardVal, suitVal);

        System.out.println("");
        moveFinder.printMoves(usrSelectedCardArrayList);

    }
}
