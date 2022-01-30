package JavaBean;

public class Book {
    private Integer id;// ID
   private String name;
    private String author;
    private String isbn;
   private String publish;
    private float price;
    private String bookresume;
    private String publishdate;

    public String getPublishdate() {
        return publishdate;
    }

    public void setPublishdate(String publishdate) {
        this.publishdate = publishdate;
    }

    public String getBookresume() {
        return bookresume;
    }

    public void setBookresume(String bookresume) {
        this.bookresume = bookresume;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getIsbn() {
        return isbn;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public String getPublish() {
        return publish;
    }
    public void setPublish(String publish) {
        this.publish = publish;
    }
    public Book() {
        super();

    }
}

