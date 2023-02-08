package project1.springcourse.models;


import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;


public class Book {
    private int id;
    private Integer person_id;

    @NotNull(message = "Название книги не может быть пустым")
    @Pattern(regexp = "[0-9А-ЯЁ][0-9a-zA-Zа-яА-ЯёЁ\\-\\s]+",
            message = "Должен быть формат \"Название\" на русском языке")
    private String title;

    @NotNull(message = "Фамилия и имя автор не могут быть пустыми")
    @Pattern(regexp = "[А-ЯЁ][а-яА-ЯёЁ\\-]+\\s[А-ЯЁ][а-яА-ЯёЁ\\-]+",
            message = "Должен быть формат \"Фамилия Имя\" на русском языке")
    private String author;

    @Min(value = 1000, message = "Год издания должен быть больше 1000")

    private int year;

    public Book(int id, Integer person_id, String title, String author, int year) {
        this.id = id;
        this.person_id = person_id;
        this.title = title;
        this.author = author;
        this.year = year;
    }

    public Book() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getPerson_id() {
        return person_id;
    }

    public void setPerson_id(Integer person_id) {
        this.person_id = person_id;
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

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}