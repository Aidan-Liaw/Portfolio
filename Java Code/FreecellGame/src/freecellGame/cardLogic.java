package freecellGame;
import java.lang.Math;
import java.util.Map;

public class cardLogic {

    /**
     * <h1>The card logic code</h1>
     * This is the logic and boilerplate code for the cards.
     * @since 2021-07-30
     * @calledBy freecellGame.cardMain
     */

    public static String[] cards = {"HA", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10", "HJ", "HQ", "HK",
            "DA", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10", "DJ", "DQ", "DK",
            "SA", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10", "SJ", "SQ", "SK",
            "CA", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "CJ", "CQ", "CK"};

    /*
    Holds the card values used in the game.
    H = Hearts, D = Diamonds, S = Spades, C = Clubs
    A = Ace, J = Jack, Q = Queen, K = King
    */

    // Returns cards to an array of Strings
    public static String[] deckCreate() {
        return cards;
    }

    // Returns a shuffled array of Strings
    public static String[] deckShuffle(String[] deck) {
        int idx1, idx2; // Holds the index for two card positions
        String temp; // Holds a temporary value for switching values
        for (int i = 0; i < 52; i++) {
            do {
                idx1 = (int)(Math.random()*(51-0+1)+0);
                // Creates a random integer value from 0 to 51

                idx2 = (int)(Math.random()*(51-0+1)+0);
                // Creates a random integer value from 0 to 51

            } while (idx1 == idx2);
            // Ensures that the two index do not equal each other

            temp = deck[idx2];
            deck[idx2] = deck[idx1];
            deck[idx1] = temp;
        }
        return deck;
    }

    // Prints the deck
    public static void deckPrint(String[] deck) {
        for (String idx: deck) {
            System.out.println(idx);
        }
    }

    // Map<Key, Value>
    // Allocates values to a map, correlating card values to integer values
    public static Map<String, Integer> cardValInit(Map<String, Integer> cardVal) {
        cardVal.put("A", 1);
        cardVal.put("2", 2);
        cardVal.put("3", 3);
        cardVal.put("4", 4);
        cardVal.put("5", 5);
        cardVal.put("6", 6);
        cardVal.put("7", 7);
        cardVal.put("8", 8);
        cardVal.put("9", 9);
        cardVal.put("10", 10);
        cardVal.put("1", 10);
        cardVal.put("J", 11);
        cardVal.put("Q", 12);
        cardVal.put("K", 13);
        return cardVal;
    }

    // Map<Key, Value>
    // Allocates values to a map, correlating suit values to integer values
    // Even index means red, odd index means black
    public static Map<Character, Integer> suitInit(Map<Character, Integer> suitVal) {
        suitVal.put('H', 0);
        suitVal.put('C', 1);
        suitVal.put('D', 2);
        suitVal.put('S', 3);
        return suitVal;
    }
}
