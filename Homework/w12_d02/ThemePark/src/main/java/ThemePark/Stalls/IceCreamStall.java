package ThemePark.Stalls;

public class IceCreamStall extends Stall {


    public IceCreamStall(String name, String ownerName, int parkingSpot, int rating) {
        super(name, ownerName, parkingSpot, rating);
    }

    @Override
    public double defaultPrice() {
        return 2.50;
    }

    @Override
    public double priceForVisitor() {
        return 2.50;
    }
}
