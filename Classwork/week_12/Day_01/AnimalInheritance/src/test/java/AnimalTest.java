import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class AnimalTest {

    Animal animal;

    @Before
    public void setUp() {
        animal = new Animal("Harry","Snake");
    }

    @Test
    public void canGetName() {
        assertEquals("Harry", animal.getName());
    }

    @Test
    public void canGetSpecies() {
        assertEquals("Snake", animal.getSpecies());
    }
}
