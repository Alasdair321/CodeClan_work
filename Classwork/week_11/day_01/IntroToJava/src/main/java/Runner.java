public class Runner {
    public static void main(String[] args) {
        Bear bear = new Bear("Baloo");
        bear.setName("Alfonzo");
        String name = bear.getName();
        System.out.println("The bear is called " + name);
    }
}
