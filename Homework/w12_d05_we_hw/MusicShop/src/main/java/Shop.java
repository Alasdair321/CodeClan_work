import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Shop implements ISell{
    private HashMap<Stock , Integer> stock;

    public Shop() {
        this.stock = new HashMap<>();
    }

    public HashMap<Stock, Integer> getAllStock() {
        return stock;
    }

    public int stockItemQuantity(Stock stockItem){
        return stock.get(stockItem);
    }

    public void addStockItem(Stock stockItem, int quantity) {
        stock.put(stockItem, quantity);
    }

    public void removeStockItem(Stock stockItem){
        stock.remove(stockItem);
    }

    public void changeStockQuantity(Stock stockItem, int newQuantity ){
        stock.replace(stockItem, newQuantity);
    }

    public boolean hasItemRegistered(Stock stockItem){
        return stock.containsKey(stockItem);
    }

    @Override
    public void sell(Stock stockItem) {
        int quantity = stockItemQuantity(stockItem);
        if (quantity>1){
            int newQuantity = quantity - 1;
            changeStockQuantity(stockItem, newQuantity);
        }
    }

    @Override
    public void buy(Stock stockItem) {
        if (hasItemRegistered(stockItem)){
            int quantity = stockItemQuantity(stockItem);
            int newQuantity = quantity + 1;
            changeStockQuantity(stockItem, newQuantity);
        } else {
            addStockItem(stockItem, 1);
        }
    }

    @Override
    public double calculateMarkup(Stock stockItem) {
        double sellPrice = stockItem.getSellPrice();
        double buyPrice = stockItem.getBuyPrice();
        return sellPrice - buyPrice;
    }


    public double calculatePotentialProfit(){
        double profit = 0;
        for (Stock stockItem: stock.keySet()) {
            profit += (calculateMarkup(stockItem) * stockItemQuantity(stockItem));
        }
        return profit;
    }
    public double calculatePotentialProfit2(){
        double profit = 0;
        for (Map.Entry<Stock, Integer> stockItem : stock.entrySet()) {
            profit += (calculateMarkup(stockItem.getKey()) * stockItem.getValue());
        }
        return profit;
    }
}
