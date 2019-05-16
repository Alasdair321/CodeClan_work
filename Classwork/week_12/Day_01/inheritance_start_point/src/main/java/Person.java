public class Person {

    private  String cohort;
    private  String name;

    public Person(String name, String cohort) {
        this.name = name;
        this.cohort = cohort;
    }

    public String getCohort() {
        return cohort;
    }

    public String getName() {
        return name;
    }

    public void setCohort(String cohort) {
        this.cohort = cohort;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String talk(String language) {
        return "I love " + language;
    }

}
