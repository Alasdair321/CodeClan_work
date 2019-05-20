public abstract class Stock{
    private double sellPrice;
    private double buyPrice;
    private String name;

    public Stock(double sellPrice, double buyPrice, String name) {
        this.sellPrice = sellPrice;
        this.buyPrice = buyPrice;
        this.name = name;
    }

    public double getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }

    public double getBuyPrice() {
        return buyPrice;
    }

    public void setBuyPrice(double buyPrice) {
        this.buyPrice = buyPrice;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
