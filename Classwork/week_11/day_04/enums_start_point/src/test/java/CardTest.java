import static org.junit.Assert.*;
        import org.junit.*;

public class CardTest {

    Card card;

    @Before
    public void before(){
        card = new Card(SuitType.HEARTS, RankType.ACE);
    }

    @Test
    public void canGetSuit(){
        assertEquals(SuitType.HEARTS,card.getSuit());
    }

    @Test
    public void canGetType() {
        assertEquals(RankType.ACE, card.getType());
    }

    @Test
    public void queenHasValueTen() {
        Card queen = new Card(SuitType.CLUBS, RankType.QUEEN);
        assertEquals(10, queen.getValue());
    }
}