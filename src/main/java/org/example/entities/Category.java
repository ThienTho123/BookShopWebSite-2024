package org.example.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity(name = "Category")
@Table(name = "category", schema = "bookshopweb")
public class Category implements Serializable {

    @Id
    @Column(name = "CategoryID")
    private Integer categoryID;

    @Column(name = "Categoryname", length = 100)
    private String categoryName;

    // Other fields and mappings
}
