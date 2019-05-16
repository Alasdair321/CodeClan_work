public class Card {

    private SuitType suit;
    private RankType value;

    public Card(SuitType suit, RankType value) {
        this.value = value;
        this.suit = suit;
    }

    public SuitType getSuit(){
        return this.suit;
    }

    public RankType getType() {
        return value;
    }

    public int getValue() {
        return value.getValue();
    }
}