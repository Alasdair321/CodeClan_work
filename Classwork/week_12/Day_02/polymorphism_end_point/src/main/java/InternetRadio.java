
public class InternetRadio implements IConnect {

    private Network network;
    private String station;

    public InternetRadio() {
        this.network = null;
        this.station = null;
    }

    @Override
    public String connect(String data) {
        return "connecting to network: " + data;
    }

    public String tuneRadio(String station){
        this.station = station;
        return "Listening to "+ this.station;
    }

    public Network getNetwork() {
        return network;
    }

    public String getStation() {
        return station;
    }
}
