import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class ShopTest {

    Trumpet trumpet;
    Oboe oboe;
    Violin violin;
    Shop shop;

    @Before
    public void setUp() throws Exception {
        trumpet = new Trumpet(50, 30, "Trumpet", "Brass");
        oboe = new Oboe(45, 25, "Oboe", "Woodwind");
        violin = new Violin(60, 30, "Violin", "String");
        shop = new Shop();
    }

    @Test
    public void addStockItem() {
        shop.addStockItem(trumpet, 5);
        assertEquals(true, shop.hasItemRegistered(trumpet));
        assertEquals(5, shop.stockItemQuantity(trumpet));
    }

    @Test
    public void getAllStock() {
        shop.addStockItem(trumpet, 5);
        shop.addStockItem(violin, 6);
        shop.addStockItem(oboe, 7);
        assertEquals(3,shop.getAllStock().size());

    }

    @Test
    public void removeStockItem() {
        shop.addStockItem(trumpet, 5);
        shop.addStockItem(violin, 6);
        shop.addStockItem(oboe, 7);
        shop.removeStockItem(oboe);
        assertEquals(2,shop.getAllStock().size());

    }

    @Test
    public void changeStockQuantity() {
        shop.addStockItem(oboe, 7);
        shop.changeStockQuantity(oboe, 6);
        assertEquals(6, shop.stockItemQuantity(oboe));
    }


    @Test
    public void sellWhereQuantityGreaterThan1() {
        shop.addStockItem(oboe, 7);
        shop.sell(oboe);
        assertEquals(6, shop.stockItemQuantity(oboe));
    }
    @Test
    public void sellWhereQuantityLessThan1() {
        shop.addStockItem(oboe, 0);
        shop.sell(oboe);
        assertEquals(0, shop.stockItemQuantity(oboe));
    }

    @Test
    public void buyUnregisteredItem() {
        assertEquals(false, shop.hasItemRegistered(trumpet));
        shop.buy(trumpet);
        assertEquals(true, shop.hasItemRegistered(trumpet));
        assertEquals(1, shop.stockItemQuantity(trumpet));
        assertEquals(1,shop.getAllStock().size());
    }

    @Test
    public void buyRegisteredItem() {
        shop.addStockItem(trumpet, 5);
        shop.buy(trumpet);
        assertEquals(true, shop.hasItemRegistered(trumpet));
        assertEquals(6, shop.stockItemQuantity(trumpet));
        assertEquals(1,shop.getAllStock().size());
    }

    @Test
    public void calculateMarkup() {
        shop.addStockItem(trumpet,6);
        assertEquals(20, shop.calculateMarkup(trumpet),0);
    }

    @Test
    public void calculateStockProfit() {
        shop.addStockItem(trumpet, 1);
        shop.addStockItem(violin, 1);
        shop.addStockItem(oboe, 1);

        assertEquals(70,shop.calculatePotentialProfit2(),0);
    }
}