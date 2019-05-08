import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BookTest {

    Book book;

    @Before
    public void before(){
        book = new Book("Dune","Science Fiction","Frank Herbert");
    }


    @Test
    public void hasTitle(){
        assertEquals("Dune", book.getTitle());
    }

    @Test
    public void hasGenre(){
        assertEquals("Science Fiction", book.getGenre());
    }

    @Test
    public void hasAuthor(){
        assertEquals("Frank Herbert", book.getAuthor());
    }

}
