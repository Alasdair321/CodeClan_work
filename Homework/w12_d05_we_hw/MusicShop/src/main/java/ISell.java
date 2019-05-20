public interface ISell {
    void sell(Stock item);
    void buy(Stock item);
    double calculateMarkup(Stock item);
}
