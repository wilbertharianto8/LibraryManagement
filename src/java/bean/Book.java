/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author USER
 */
public class Book {
    private String title;
    private String author;
    private int quantity;    
    private String image;
    private String category;
    private String section;

    public Book() {
    }   

    public Book(String title, String author, int quantity, String image, String category, String section) {
        this.title = title;
        this.author = author;
        this.quantity = quantity;
        this.image = image;
        this.category = category;
        this.section = section;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Book{" + "title=" + title + ", author=" + author + ", quantity=" + quantity + ", image=" + image + ", category=" + category + ", section=" + section + '}';
    }
    
}
