package ThemePark;

public class Visitor {
    private int age;
    private int height;
    private double money;

    public Visitor(int age, int height, double money) {
        this.age = age;
        this.height = height;
        this.money = money;
    }

    public int getAge() {
        return age;
    }

    public int getHeight() {
        return height;
    }

    public double getMoney() {
        return money;
    }

    public void changeMoney(double money) {
        this.money += money;
    }
}
