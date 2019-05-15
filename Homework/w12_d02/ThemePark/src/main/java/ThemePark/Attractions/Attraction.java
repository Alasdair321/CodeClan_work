package ThemePark.Attractions;

import ThemePark.Interfaces.IReviewed;

public abstract class Attraction implements IReviewed {
    private String name;
    private int rating;

    public Attraction(String name, int rating) {
        this.name = name;
        this.rating = rating;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public int getRating() {
        return rating;
    }
}
