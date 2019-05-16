import java.util.*;

public class Network {
    private String name;
    private ArrayList<IConnect> devices;
    private int maxConnections = 10;

    public Network(String name){
        this.devices = new ArrayList<IConnect>();
        this.name = name;
    }

    public String getName(){
        return name;
    }

    public int deviceCount(){
        return devices.size();
    }

    public void connect(IConnect device){
        if (devices.size() < maxConnections) {
            devices.add(device);
        }
    }

    public void disconnectAll(){
        devices.clear();
    }

    public int networkConnectionSpace(){
        return maxConnections - devices.size();

    }
}