public class Computer {
    private String processor;
    private String ram;
    private String graphicsCard;
    private String hardDrive;
    private IAudio audioDevice;
    private String currentApp;

    public Computer(String processor, String ram, String graphicsCard, String hardDrive, IAudio audioDevice) {
        this.processor = processor;
        this.ram = ram;
        this.graphicsCard = graphicsCard;
        this.hardDrive = hardDrive;
        this.audioDevice = audioDevice;
        this.currentApp = null;
    }

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
        this.processor = processor;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getGraphicsCard() {
        return graphicsCard;
    }

    public void setGraphicsCard(String graphicsCard) {
        this.graphicsCard = graphicsCard;
    }

    public String getHardDrive() {
        return hardDrive;
    }

    public void setHardDrive(String hardDrive) {
        this.hardDrive = hardDrive;
    }

    public IAudio getAudioDevice() {
        return audioDevice;
    }

    public void setAudioDevice(IAudio audioDevice) {
        this.audioDevice = audioDevice;
    }

    public String getCurrentApp() {
        return currentApp;
    }

    public void setCurrentApp(String currentApp) {
        this.currentApp = currentApp;
    }

    public String playAudio() {
        return this.audioDevice.playAudio(currentApp);
    }
}
