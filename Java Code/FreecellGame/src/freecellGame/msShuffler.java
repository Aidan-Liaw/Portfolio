package freecellGame;
import java.util.Arrays;

public class msShuffler {
    public int seed;

    private String[] deck = {
            "CA", "DA", "HA", "SA",
            "C2", "D2", "H2", "S2",
            "C3", "D3", "H3", "S3",
            "C4", "D4", "H4", "S4",
            "C5", "D5", "H5", "S5",
            "C6", "D6", "H6", "S6",
            "C7", "D7", "H7", "S7",
            "C8", "D8", "H8", "S8",
            "C9", "D9", "H9", "S9",
            "C10", "D10", "H10", "S10",
            "CJ", "DJ", "HJ", "SJ",
            "CQ", "DQ", "HQ", "SQ",
            "CK", "DK", "HK", "SK",
    };

    public int random() {
        seed = (214013 * seed + 2531011) & Integer.MAX_VALUE;
        return (seed >> 16);
    }

    //shuffled cards go to the end
    public String[] getShuffledDeck() {
        String[] deck = Arrays.copyOf(this.deck, this.deck.length);
        for(int i = deck.length - 1; i > 0; i--) {
            int r = random() % (i + 1);
            String card = deck[r];
            deck[r] = deck[i];
            deck[i] = card;
        }
        return deck;
    }

    //deal from end first
    public String[] dealGame(int seed) {
        this.seed = seed;
        String[] shuffledDeck = getShuffledDeck();
//        for(int count = 1, i = shuffledDeck.length - 1; i >= 0; count++, i--) {
//            System.out.print(shuffledDeck[i]);
//            if(count % 8 == 0) {
//                System.out.println();
//            } else {
//                System.out.print(" ");
//            }
//        }
//        System.out.println();
        return shuffledDeck;
    }

    public static void main(String[] args) {
        msShuffler cardShuffler = new msShuffler();
        cardShuffler.dealGame(65768);
        System.out.println();
    }

}
