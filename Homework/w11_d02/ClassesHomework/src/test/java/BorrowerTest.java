import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class BorrowerTest {

    private Borrower borrower;
    private Library library;
    private Book book1;
    private Book book2;
    private Book book3;

    @Before
    public void before(){
        borrower = new Borrower();
        library = new Library(10);
        book1 = new Book("Dune","Science Fiction","Frank Herbert");
        book2 = new Book("Harry Potter","Wizard","J K Rowling");
        book3 = new Book("Odyssey","Ancient Greek","Homer");
        library.addBook(book1);
        library.addBook(book2);
        library.addBook(book3);

    }

    @Test
    public void startsWithNoBooksBorrowed(){
        assertEquals(0, borrower.borrowedBooksCount());
    }

    @Test
    public void borrowBook(){
        borrower.borrowBook(library, book1);
        assertEquals(1, borrower.borrowedBooksCount());
        assertEquals(2, library.bookCount());
    }

}


