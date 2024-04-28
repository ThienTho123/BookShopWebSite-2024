package org.example.entities;

import lombok.*;

import jakarta.persistence.*;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Read")
@Table(name = "readbefore", schema = "bookshopweb")
public class Readbefore {
    @Id
    @Column(name = "ReadID", nullable = false)
    private Integer readID;

    @Column(name = "Imagelink", length = 5000)
    private String imageLink;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookID")
    private Book bookID;
}