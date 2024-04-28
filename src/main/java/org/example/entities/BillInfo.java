package org.example.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import jakarta.persistence.*;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@JsonIgnoreProperties("billID")
@Entity(name = "Billinfo")
@Table(name = "billinfo", schema = "bookshopweb")
public class BillInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "BillinfoID", nullable = false)
    private Integer billInfoID;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BillID")
    private Bill billID;

    @Column(name = "Number")
    private Integer number;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookID")
    private Book bookid;


}