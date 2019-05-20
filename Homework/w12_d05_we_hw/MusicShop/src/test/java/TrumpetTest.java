import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TrumpetTest {
    Trumpet trumpet;
    @Before
    public void setUp() throws Exception {
        trumpet = new Trumpet(50, 30, "Trumpet", "Brass");
    }

    @Test
    public void hasInfo() {
        assertEquals(50, trumpet.getSellPrice(),0);
        assertEquals(30, trumpet.getBuyPrice(),0);
        assertEquals("Trumpet", trumpet.getName());
        assertEquals("Brass", trumpet.getType());
    }

    @Test
    public void canPlay() {
        assertEquals("toot", trumpet.play());
    }

    @Test
    public void canSetSellPrice() {
        trumpet.setSellPrice(55);
        assertEquals(55, trumpet.getSellPrice(),0);
    }

    @Test
    public void canSetBuyPrice() {
        trumpet.setBuyPrice(25);
        assertEquals(25, trumpet.getBuyPrice(),0);
    }

    @Test
    public void canSetName() {
        trumpet.setName("Tooter");
        assertEquals("Tooter", trumpet.getName());
    }

    @Test
    public void canSetType() {
        trumpet.setType("Brass wind");
        assertEquals("Brass wind", trumpet.getType());

    }
}
