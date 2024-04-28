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
@Entity(name = "Type")
@Table(name = "type", schema = "bookshopweb")
public class Type implements Serializable {

    @Id
    @Column(name = "TypeID")
    private Integer typeID;

    @Column(name = "Typename")
    private String typeName;

    @Column(name = "Price")
    private float price;
}
