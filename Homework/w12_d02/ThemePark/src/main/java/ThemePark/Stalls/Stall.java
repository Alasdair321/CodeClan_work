package ThemePark.Stalls;

import ThemePark.Interfaces.IReviewed;
import ThemePark.Interfaces.ITicketed;

public abstract class Stall implements IReviewed, ITicketed {
    private String name;
    private String ownerName;
    private int parkingSpot;
    private int rating;

    public Stall(String name, String ownerName, int parkingSpot, int rating) {
        this.name = name;
        this.ownerName = ownerName;
        this.parkingSpot = parkingSpot;
        this.rating = rating;
    }

    @Override
    public String getName() {
        return name;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public int getParkingSpot() {
        return parkingSpot;
    }

    @Override
    public int getRating() {
        return rating;
    }
}
