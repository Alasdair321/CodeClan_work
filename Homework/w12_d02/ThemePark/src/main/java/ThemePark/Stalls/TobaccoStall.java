package ThemePark.Stalls;

import ThemePark.Interfaces.ISecurity;
import ThemePark.Visitor;

public class TobaccoStall extends Stall implements ISecurity {

    public TobaccoStall(String name, String ownerName, int parkingSpot, int rating) {
        super(name, ownerName, parkingSpot, rating);
    }

    @Override
    public boolean isAllowedTo(Visitor visitor) {
        if (visitor.getAge() >= 18) {
            return true;
        } else {
            return false;
        }
    }
    @Override
    public double defaultPrice() {
        return 5.5;
    }

    @Override
    public double priceForVisitor() {
        return 5.5;
    }
}
