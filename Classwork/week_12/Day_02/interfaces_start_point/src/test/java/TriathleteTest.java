import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class TriathleteTest {

    Triathlete triathlete;

    @Before
    public void before() {
        triathlete = new Triathlete();
    }

    @Test
    public void hasDistanceAtBeginning() {
        assertEquals(0, triathlete.getDistanceTravelled());
    }

    @Test
    public void canRunDistance() {
        triathlete.run(10);
        assertEquals(10, triathlete.getDistanceTravelled());
    }

    @Test
    public void canRunTriathalon() {
        triathlete.triathalon(5,40,15);
        assertEquals(60, triathlete.getDistanceTravelled());
    }
}
