import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class HeadphonesTest {
    private Headphones headphones;

    @Before
    public void before() {
        headphones = new Headphones("Audio-Technica", "ATH", HeadphoneType.OVER_EAR);
    }

    @Test
    public void canGetManufacturer() {
        assertEquals("Audio-Technica", headphones.getManufacturer());
    }

    @Test
    public void canGetModel() {
        assertEquals("ATH", headphones.getModel());
    }

    @Test
    public void canGetHeadphoneType() {
        assertEquals(HeadphoneType.OVER_EAR, headphones.getHeadphoneType());
    }

    @Test
    public void canPlayAudio() {
        String expected = "Playing Spotify through headphones...";
        assertEquals(expected, headphones.playAudio("Spotify"));
    }
}
