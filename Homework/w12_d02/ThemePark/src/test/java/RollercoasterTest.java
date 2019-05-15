import ThemePark.Attractions.RollerCoaster;
import ThemePark.Visitor;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class RollercoasterTest {

    RollerCoaster rollerCoaster;
    Visitor visitor1;
    Visitor visitor2;
    Visitor visitor3;

    @Before
    public void setUp() throws Exception {
        rollerCoaster = new RollerCoaster("Screamer", 7);
        visitor1 = new Visitor(28, 164, 40.00);
        visitor2 = new Visitor(11, 180, 40.00);
        visitor3 = new Visitor(15, 140, 40.00);
    }

    @Test
    public void hasName() {
        assertEquals("Screamer", rollerCoaster.getName() );
    }

    @Test
    public void hasRating() {
        assertEquals(7, rollerCoaster.getRating());
    }

    @Test
    public void visitorShort() {
        assertEquals(false, rollerCoaster.isAllowedTo(visitor3));
    }

    @Test
    public void visitorYoung() {
        assertEquals(false, rollerCoaster.isAllowedTo(visitor2));

    }

    @Test
    public void visitorOK() {
        assertEquals(true, rollerCoaster.isAllowedTo(visitor1));

    }
}
