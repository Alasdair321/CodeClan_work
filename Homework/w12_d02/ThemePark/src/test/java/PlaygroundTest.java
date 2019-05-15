import ThemePark.Attractions.Playground;
import ThemePark.Visitor;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class PlaygroundTest {

        Playground playground;
        Visitor visitor1;
        Visitor visitor2;
        Visitor visitor3;

        @Before
        public void setUp() throws Exception {
            playground = new Playground("Fun Zone", 9);
            visitor1 = new Visitor(28, 164, 40.00);
            visitor2 = new Visitor(11, 180, 40.00);
            visitor3 = new Visitor(15, 140, 40.00);
        }

        @Test
        public void hasName() {
            assertEquals("Fun Zone", playground.getName() );
        }

        @Test
        public void hasRating() {
            assertEquals(9, playground.getRating());
        }

        @Test
        public void visitorShort() {
            assertEquals(false, playground.isAllowedTo(visitor3));
        }

        @Test
        public void visitorYoung() {
            assertEquals(true, playground.isAllowedTo(visitor2));

        }

        @Test
        public void visitorOK() {
            assertEquals(false, playground.isAllowedTo(visitor1));

        }
    }