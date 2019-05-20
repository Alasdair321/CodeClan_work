public class Violin extends Stringed {
    public Violin(double sellPrice, double buyPrice, String name, String type) {
        super(sellPrice, buyPrice, name, type);
    }

    @Override
    public String play() {
        return "squeak";
    }
}
