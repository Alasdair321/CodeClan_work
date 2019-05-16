public class Mammal extends Animal {

    private String hairColour;

    public Mammal(String name, String species, String hairColour) {
        super(name, species);
        this.hairColour = hairColour;
    }

    public String getHairColour() {
        return hairColour;
    }

    public void setHairColour(String hairColour) {
        this.hairColour = hairColour;
    }
}
