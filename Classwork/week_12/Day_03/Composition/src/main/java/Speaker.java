public class Speaker implements IAudio {
    private String manufacturer;
    private String model;
    private float size;


    public Speaker(String manufacturer, String model, float size) {
        this.manufacturer = manufacturer;
        this.model = model;
        this.size = size;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public String getModel() {
        return model;
    }

    public float getSize() {
        return size;
    }

    @Override
    public String playAudio(String audio) {
        return "Playing " + audio + " through speakers...";
    }
}
