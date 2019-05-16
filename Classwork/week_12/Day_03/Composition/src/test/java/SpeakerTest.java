import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class SpeakerTest {
    private Speaker speaker;

    @Before
    public void before() {
        speaker = new Speaker("Yamaha", "HS", 8f);
    }

    @Test
    public void canGetManufacturer() {
        assertEquals("Yamaha", speaker.getManufacturer());
    }

    @Test
    public void canGetModel() {
        assertEquals("HS", speaker.getModel());
    }

    @Test
    public void canGetSize() {
        assertEquals(8f, speaker.getSize(), 0.01);
    }

    @Test
    public void canPlayAudio() {
        String expected = "Playing Spotify through speakers...";
        assertEquals(expected, speaker.playAudio("Spotify"));
    }
}
