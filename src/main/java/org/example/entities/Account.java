package org.example.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import org.example.entities.enums.*;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@JsonIgnoreProperties("bills")
@Entity(name = "Account")
@Table(name = "account", schema = "bookshopweb")
public class Account implements UserDetails{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "AccountID", nullable = false)
    private Integer accountID;

    @Column(name = "Accountname", length = 255)
    private String username;

    @Column(name = "Password", length = 255)
    @JsonIgnore
    private String password;

    @Column(name = "Email", length = 50)
    private String email;

    @Column(name = "Name", length = 255)
    private String name;

    @Column(name = "Phonenumber", length = 10)
    private String phoneNumber;

    @Column(name="Role")
    protected Role role;

    @Column(name = "Address", length =500)
    private String address;


    @OneToMany(mappedBy = "AccountID")
    @ToString.Exclude
    private Set<Bill> bills = new LinkedHashSet<>();

    @Override
    @JsonIgnore
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return List.of(new SimpleGrantedAuthority(role.name()));
    }

    @Override
    @JsonIgnore
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    @JsonIgnore
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    @JsonIgnore
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    @JsonIgnore
    public boolean isEnabled() {
        return true;
    }
}

