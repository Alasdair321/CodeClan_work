import ThemePark.Attractions.Dodgems;
import ThemePark.Attractions.Park;
import ThemePark.Attractions.Playground;
import ThemePark.Attractions.RollerCoaster;
import ThemePark.Stalls.CandyFlossStall;
import ThemePark.Stalls.IceCreamStall;
import ThemePark.Stalls.TobaccoStall;
import ThemePark.ThemePark;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;

import java.util.HashMap;

import static org.junit.Assert.assertEquals;

public class ThemeParkTest {

    ThemePark themePark;
    RollerCoaster rollerCoaster;
    Dodgems dodgems;
    Park park;
    Playground playground;
    CandyFlossStall candyFlossStall;
    IceCreamStall iceCreamStall;
    TobaccoStall tobaccoStall;

    @Before
    public void setUp() throws Exception {
        themePark = new ThemePark();
        rollerCoaster = new RollerCoaster("Screamer", 7);
        playground = new Playground("Fun Zone", 9);
        tobaccoStall = new TobaccoStall("Ciggys", "Kev", 13, 5);
        dodgems = new Dodgems("Bumperz",5);
        park = new Park("Play Zone",6);
        candyFlossStall = new CandyFlossStall("Sweet Stuff", "Clive", 2,2);
        iceCreamStall = new IceCreamStall("I Scream Stall","Johnson",4,8);
        themePark.addAttraction(rollerCoaster);
        themePark.addAttraction(playground);
        themePark.addAttraction(tobaccoStall);
        themePark.addAttraction(dodgems);
        themePark.addAttraction(park);
        themePark.addAttraction(candyFlossStall);
        themePark.addAttraction(iceCreamStall);
    }

    @Ignore
    @Test
    public void hasNoAttractionsInitially() {
        assertEquals(0,themePark.countAttractions());
    }

    @Ignore
    @Test
    public void canAddAttraction() {
        themePark.addAttraction(rollerCoaster);
        assertEquals(1,themePark.countAttractions());
    }

    @Ignore
    @Test
    public void canAddAllAttractions() {
        themePark.addAttraction(rollerCoaster);
        themePark.addAttraction(playground);
        themePark.addAttraction(tobaccoStall);
        themePark.addAttraction(dodgems);
        themePark.addAttraction(park);
        themePark.addAttraction(candyFlossStall);
        themePark.addAttraction(iceCreamStall);
        assertEquals(7,themePark.countAttractions());
    }

    @Test
    public void getRatingOfAllAttractions() {
        themePark.populateAttractionRatings();
        assertEquals(7, themePark.getAttractionRating("Screamer"));
        assertEquals(9, themePark.getAttractionRating("Fun Zone"));
        assertEquals(5, themePark.getAttractionRating("Ciggys"));
        assertEquals(5, themePark.getAttractionRating("Bumperz"));
        assertEquals(6, themePark.getAttractionRating("Play Zone"));
        assertEquals(2, themePark.getAttractionRating("Sweet Stuff"));
        assertEquals(8, themePark.getAttractionRating("I Scream Stall"));
    }
}
