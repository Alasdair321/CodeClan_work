package ThemePark.Stalls;

public class CandyFlossStall extends Stall {

    public CandyFlossStall(String name, String ownerName, int parkingSpot, int rating) {
        super(name, ownerName, parkingSpot, rating);
    }


    @Override
    public double defaultPrice() {
        return 3.0;
    }

    @Override
    public double priceForVisitor() {
        return 3.0;
    }
}
