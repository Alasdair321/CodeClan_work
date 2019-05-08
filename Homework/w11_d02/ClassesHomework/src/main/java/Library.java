import java.util.ArrayList;
import java.util.HashMap;

public class Library {

    private HashMap<String, ArrayList<Book>> books;
    private int capacity;

    public Library(int capacity){
        this.books = new ArrayList<>();
        this.capacity = capacity;
    }

    public int bookCount(){
        return books.size();
    }

    public void addBook(Book book) {
        if (this.bookCount() < capacity){
        books.add(book);
        }
    }

    public Book giveBook(Book book) {
    int index = books.indexOf(book);
    return books.remove(index);
    }
}
