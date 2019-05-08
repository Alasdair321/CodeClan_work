import java.util.ArrayList;

public class River {

    private ArrayList<Salmon> fish;

    public River(){
        this.fish = new ArrayList<>();
    }

    public void addFish(Salmon salmon) {
        fish.add(salmon);
    }

    public int fishCount() {
        return fish.size();
    }

    public Salmon removeFish() {
        return fish.remove(0);
    }
}
