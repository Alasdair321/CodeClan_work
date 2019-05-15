import ThemePark.Stalls.TobaccoStall;
import ThemePark.Visitor;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TobaccoStallTest {

    TobaccoStall tobaccoStall;
    Visitor visitorYoung;
    Visitor visitorOld;

    @Before
    public void setUp() throws Exception {
        tobaccoStall = new TobaccoStall("Ciggys", "Kev", 13, 5);
        visitorYoung = new Visitor(5, 100,1.00);
        visitorOld= new Visitor(55, 180,50);
    }

    @Test
    public void hasName() {
        assertEquals("Ciggys", tobaccoStall.getName());
    }

    @Test
    public void hasOwner() {
        assertEquals("Kev", tobaccoStall.getOwnerName());
    }

    @Test
    public void hasParkingSpot() {
        assertEquals(13, tobaccoStall.getParkingSpot());
    }

    @Test
    public void hasRating() {
        assertEquals(5, tobaccoStall.getRating());
    }

    @Test
    public void tooYoung() {
        assertEquals(false, tobaccoStall.isAllowedTo(visitorYoung));
    }

    @Test
    public void oldEnough() {
        assertEquals(true, tobaccoStall.isAllowedTo(visitorOld));
    }
}
