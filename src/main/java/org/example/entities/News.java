package org.example.entities;


import lombok.*;

import jakarta.persistence.*;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "News")
@Table(name = "news", schema = "bookshopweb")
public class News {
    @Id
    @Column(name = "NewsID", nullable = false)
    private Integer newsID;


    @Column(name = "Newsimage", length = 1000)
    private String newsImage;

    @Column(name = "Newstittle", length = 255)
    private String newsTitle;
}