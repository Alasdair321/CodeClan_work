import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

public class ComputerTest {
    private Computer computer;
    private Speaker speaker;

    @Before
    public void before() {
        speaker = new Speaker("Yamaha", "HS", 8f);
        computer = new Computer("Intel", "Corsair", "Nvidia", "WD", speaker);
    }

    @Test
    public void canGetProcessor() {
        assertEquals("Intel", computer.getProcessor());
    }

    @Test
    public void canSetProcessor() {
        computer.setProcessor("AMD");
        assertEquals("AMD", computer.getProcessor());
    }

    @Test
    public void canGetRam() {
        assertEquals("Corsair", computer.getRam());
    }

    @Test
    public void canSetRam() {
        computer.setRam("Kingston");
        assertEquals("Kingston", computer.getRam());
    }

    @Test
    public void canGetGraphicsCard() {
        assertEquals("Nvidia", computer.getGraphicsCard());
    }

    @Test
    public void canSetGraphicsCard() {
        computer.setGraphicsCard("AMD");
        assertEquals("AMD", computer.getGraphicsCard());
    }

    @Test
    public void canGetHardDrive() {
        assertEquals("WD", computer.getHardDrive());
    }

    @Test
    public void canSetHardDrive() {
        computer.setHardDrive("Seagate");
        assertEquals("Seagate", computer.getHardDrive());
    }

    @Test
    public void canGetSpeaker() {
        assertEquals(speaker, computer.getAudioDevice());
    }

    @Test
    public void canSetSpeaker() {
        // speaker test
        Speaker newSpeaker = new Speaker("KRK", "Rokit", 5f);
        computer.setAudioDevice(newSpeaker);
        assertEquals(newSpeaker, computer.getAudioDevice());

        computer.setCurrentApp("Spotify");
        String expected = "Playing Spotify through speakers...";
        assertEquals(expected, computer.playAudio());
        //headphones test
        Headphones headphones = new Headphones("Sony","123",HeadphoneType.IN_EAR);
        computer.setAudioDevice(headphones);
        assertEquals(headphones, computer.getAudioDevice());
        String headphonesExpected = "Playing Spotify through headphones...";
        assertEquals(headphonesExpected, computer.playAudio());
    }

    @Test
    public void currentAppIsInitiallyNull() {
        assertNull(computer.getCurrentApp());
    }

    @Test
    public void canSetCurrentApp() {
        computer.setCurrentApp("Spotify");
        String expected = "Playing Spotify through speakers...";
        assertEquals(expected, computer.playAudio());
    }
}
