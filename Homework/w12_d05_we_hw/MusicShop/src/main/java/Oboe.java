public class Oboe extends Woodwind {
    public Oboe(double sellPrice, double buyPrice, String name, String type) {
        super(sellPrice, buyPrice, name, type);
    }

    @Override
    public String play() {
        return "burr";
    }
}
