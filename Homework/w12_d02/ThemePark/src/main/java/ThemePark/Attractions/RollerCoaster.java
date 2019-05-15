package ThemePark.Attractions;

import ThemePark.Interfaces.ISecurity;
import ThemePark.Visitor;

public class RollerCoaster extends Attraction implements ISecurity {
    public RollerCoaster(String name, int rating) {
        super(name, rating);
    }

    @Override
    public boolean isAllowedTo(Visitor visitor) {
        if (visitor.getAge() >= 12 && visitor.getHeight() >= 145 ) {
            return true;
        } else {
            return false;
        }
    }
}
