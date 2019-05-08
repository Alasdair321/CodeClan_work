import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BearTest {

    Bear bear;
    Bear thinBear;

    @Before
    public void before(){
        bear = new Bear ("Baloo", 25, 95.62, 'm', 170.00);
        thinBear = new Bear ("Yogi", 40, 79.00, 'f', 300.20);
    }

    @Test
    public void hasName(){
//        Bear bear = new Bear("Baloo", 25, 95.62);
        assertEquals("Baloo", bear.getName());
    }

    @Test
    public void hasAge(){
//        Bear bear = new Bear("Baloo", 25, 95.62);
        assertEquals(25, bear.getAge());
    }

    @Test
    public void hasWeight(){
//        Bear bear = new Bear("Baloo", 25, 95.62);
        assertEquals(95.62, bear.getWeight(), 0.01);
    }

    @Test
    public void readyToHibernateIfGreaterThan80(){
        assertEquals(true, bear.readyToHibernate());
    }

    @Test
    public void notReadyToHibernateIfGreaterThan80(){
        assertEquals(false, thinBear.readyToHibernate());
    }

    @Test
    public void hasGender(){
        assertEquals('m', bear.getGender());
    }

    @Test
    public void hasHeight(){
        assertEquals(170.00, bear.getHeight(), 0);
    }
}
