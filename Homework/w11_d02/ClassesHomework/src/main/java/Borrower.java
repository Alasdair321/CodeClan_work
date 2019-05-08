import java.util.ArrayList;

public class Borrower {

    private ArrayList<Book> borrowedBooks;

    public Borrower(){
        borrowedBooks = new ArrayList<>();
    }

    public int borrowedBooksCount() {
        return borrowedBooks.size();
    }

    public void borrowBook(Library library, Book book) {
        Book providedBook = library.giveBook(book);
        borrowedBooks.add(providedBook);
    }
}

