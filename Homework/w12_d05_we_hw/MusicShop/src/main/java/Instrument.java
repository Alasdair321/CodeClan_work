public abstract class Instrument extends Stock implements IPlay{

    String type;

    public Instrument(double sellPrice, double buyPrice, String name, String type) {
        super(sellPrice, buyPrice, name);
        this.type = type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
}
