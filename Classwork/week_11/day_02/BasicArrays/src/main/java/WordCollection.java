public class WordCollection {

    private String[] words;

    public WordCollection(){
        this.words = new String[5];
    }

    public int getWordCount() {
        return this.words.length;
    }
}
