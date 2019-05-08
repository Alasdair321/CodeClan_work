public class Bear {
    private double weight;
    private String name;
    private int age;
    private char gender;
    private double height;

    public Bear(String name, int age, double weight, char gender, double height) {
        this.name = name;
        this.age = age;
        this.weight = weight;
        this.gender = gender;
        this.height = height;
    }

    public String getName(){
        return name;
    }

    public int getAge() {
        return age;
    }

    public double getWeight() {
        return weight;
    }

    public boolean readyToHibernate() {
        return (weight >= 80.00);
    }

    public char getGender() {
        return gender;
    }

    public double getHeight() {
        return height;
    }
}
