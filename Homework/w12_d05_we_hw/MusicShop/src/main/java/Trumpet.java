public class Trumpet extends Brass {
    public Trumpet(double sellPrice, double buyPrice, String name, String type) {
        super(sellPrice, buyPrice, name, type);
    }

    @Override
    public String play() {
        return "toot";
    }

}
