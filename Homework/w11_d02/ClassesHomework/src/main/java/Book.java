public class Book {
    private String title;
    private String genre;
    private String author;

    public Book(String title, String genre, String author){
        this.title = title;
        this.genre = genre;
        this.author = author;
    }

    public String getAuthor() {
        return author;
    }

    public String getTitle() {
        return title;
    }

    public String getGenre() {
        return genre;
    }
}
