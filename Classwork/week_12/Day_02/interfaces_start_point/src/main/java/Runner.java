public class Runner extends Athlete implements IRun{

    @Override
    public void run(int distance) {
        distanceTravelled+=distance;
    }
}
