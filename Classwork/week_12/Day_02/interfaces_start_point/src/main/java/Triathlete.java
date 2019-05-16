public class Triathlete extends Athlete implements IRun, ISwim, ICycle {


    public void triathalon(int distanceSwim, int distanceCycle, int distanceRun){
        swim(distanceSwim);
        cycle(distanceCycle);
        run(distanceRun);
    }

    @Override
    public void run(int distance) {
        distanceTravelled+=distance;
    }

    @Override
    public void swim(int distance) {
         distanceTravelled+=distance;
    }

    @Override
    public void cycle(int distance) {
        distanceTravelled+=distance;
    }
}
