import ThemePark.Visitor;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class VisitorTest {

    private Visitor youngVisitor;
    private Visitor shortVisitor;
    private Visitor olderVisitor;

    @Before
    public void setUp() throws Exception {
        youngVisitor = new Visitor(11, 165, 50.00);
        shortVisitor = new Visitor(21, 140, 200.50);
        olderVisitor = new Visitor(19, 200, 175.50);
    }

    @Test
    public void hasAge() {
        assertEquals(11, youngVisitor.getAge());
    }

    @Test
    public void hasMoney() {
        assertEquals(50.00, youngVisitor.getMoney(),0);
    }

    @Test
    public void hasHeight() {
        assertEquals(165, youngVisitor.getHeight());
    }

    @Test
    public void decreaseMoney() {
        youngVisitor.changeMoney(50);
        assertEquals(100.00, youngVisitor.getMoney(),0);
    }

    @Test
    public void increaseMoney() {
        youngVisitor.changeMoney(-5);
        assertEquals(45, youngVisitor.getMoney(),0);
    }

}
