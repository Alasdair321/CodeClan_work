public class Bear extends Mammal {
    private int pawSize;

    public Bear(String name, String species, String hairColour, int pawSize) {
        super(name, species, hairColour);
        this.pawSize = pawSize;
    }

    public int getPawSize() {
        return pawSize;
    }

    public void setPawSize(int pawSize) {
        this.pawSize = pawSize;
    }

    @Override
    public String eat() {
        return "Rarr";
    }
}
