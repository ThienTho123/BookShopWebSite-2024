package org.example.entities;

import lombok.*;

import jakarta.persistence.*;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Book")
@Table(name = "book", schema = "bookshopweb")
public class Book {
    @Id
    @Column(name = "BookID", nullable = false)
    private Integer bookID;

    @Column(name = "Title", length = 1000)
    private String title;

    @Column(name = "Content", length = 10000)
    private String content;

    @Column(name = "Price")
    private float price;

    @Column(name = "Avatar", length = 1000)
    private String avatar;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CategoryID")
    private Category category;


    @Column(name = "Author", length = 100)
    private String author;


    @Column(name = "Language", length = 255)
    private String language;

    @Column(name = "Age")
    private Integer age;

    @Column(name = "Stock")
    private int stock;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TypeID")
    private Type typeID;
}