public class Animal {
    private String species;
    private String name;

    public Animal(String name, String species) {
        this.name = name;
        this.species = species;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String eat(){
        return "Yum";
    }
}
