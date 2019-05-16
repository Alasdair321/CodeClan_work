public class Student extends Person {

    public Student(String name, String cohort) {
        super(name, cohort);
    }

    @Override
    public String talk(String language) {
        return "I love learning " + language;
    }

}
