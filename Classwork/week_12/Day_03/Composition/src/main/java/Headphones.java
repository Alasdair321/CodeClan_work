public class Headphones implements IAudio{
    private String manufacturer;
    private String model;
    private HeadphoneType headphoneType;

    public Headphones(String manufacturer, String model, HeadphoneType headphoneType) {
        this.manufacturer = manufacturer;
        this.model = model;
        this.headphoneType = headphoneType;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public String getModel() {
        return model;
    }

    public HeadphoneType getHeadphoneType() {
        return headphoneType;
    }

    @Override
    public String playAudio(String audio) {
        return "Playing " + audio + " through headphones...";
    }
}
