package ThemePark;

import ThemePark.Interfaces.IReviewed;

import java.util.ArrayList;
import java.util.HashMap;

public class ThemePark {

    private ArrayList<IReviewed> attractions;
    private HashMap<String, Integer> attractionRatings;



    public ThemePark() {
        this.attractions = new ArrayList<>();
        this.attractionRatings = new HashMap<>();
    }

    public ArrayList<IReviewed> getAttractions() {
        return attractions;
    }

    public HashMap<String, Integer> populateAttractionRatings() {
        if (countAttractions() != 0) {
            for (IReviewed attraction : attractions) {
                String name = attraction.getName();
                int rating = attraction.getRating();
                attractionRatings.put(name,rating);
            }
        }
        return attractionRatings;
    }

    public int getAttractionRating(String key) {
        return attractionRatings.get(key);
    }


    public int countAttractions(){
        return attractions.size();
    }
    public void addAttraction(IReviewed attraction){
        attractions.add(attraction);
    }
}
