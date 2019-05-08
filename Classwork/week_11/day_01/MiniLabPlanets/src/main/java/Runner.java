public class Runner {
    public static void main(String[] args){
        Planet mars = new Planet("Mars", 908973);
        String name = mars.getName();
        int size = mars.getSize();
        String explode = mars.explode();
        System.out.println("The planet name is "+ name);
        System.out.println("The planet size is "+ size);
        System.out.println(explode);
    }

}
