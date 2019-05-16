import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class MammalTest {

    Mammal mammal;

    @Before
    public void setUp() throws Exception {
        mammal = new Mammal("John","Cat","Purple");
    }

    @Test
    public void canGetHairColour() {
        assertEquals("Purple", mammal.getHairColour());
    }

    @Test
    public void canSetHairColour() {
        mammal.setHairColour("Yellow");
        assertEquals("Yellow", mammal.getHairColour());
    }

    @Test
    public void canGetName() {
        assertEquals("John", mammal.getName());
    }
}
