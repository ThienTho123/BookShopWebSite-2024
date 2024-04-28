package org.example.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;
import jakarta.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@JsonIgnoreProperties({"billinfos","AccountID"})
@Entity(name = "Bill")
@Table(name = "bill", schema = "bookshopweb")
public class Bill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "BillID", nullable = false)
    private Integer billID;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AccountID")
    private Account AccountID;

    @Column(name = "Ispaid",length = 1)
    private Boolean paid;

    @OneToMany(mappedBy = "billID")
    @ToString.Exclude
    private Set<BillInfo> billinfos = new LinkedHashSet<>();

}
