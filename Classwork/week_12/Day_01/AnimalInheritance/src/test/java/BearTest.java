import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BearTest {

    Bear bear;
    @Before
    public void setUp() throws Exception {
        bear = new Bear("Henry","Bear", "Blue", 10);
    }

    @Test
    public void canGetPawSize() {
        assertEquals(10, bear.getPawSize());
    }

    @Test
    public void canSetPawSize() {
        bear.setPawSize(11);
        assertEquals(11, bear.getPawSize());
    }

    @Test
    public void canGetName() {
        assertEquals("Henry", bear.getName());
    }

    @Test
    public void canEat() {
        assertEquals("Rarr", bear.eat());
    }
}
