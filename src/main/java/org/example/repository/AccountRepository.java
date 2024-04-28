package org.example.repository;

import jakarta.transaction.Transactional;
import org.example.entities.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {

    Optional<? extends Account> findByUsername(String username);
    Optional<? extends Account> findByEmail(String username);
    Optional<? extends Account> findByUsernameAndPassword(String username, String password);
    Optional<Account> findAccountByEmail (String email);
    Account findAccountByAccountID(int accountid);
    @Transactional
    @Modifying
    @Query("UPDATE Account a SET a.name = :name, a.phoneNumber = :phoneNumber, a.address = :address WHERE a.accountID = :accountID")
    void updateAddressEmailPhoneNumberAccount(@Param("name") String name, @Param("phoneNumber") String phoneNumber, @Param("address") String address, @Param("accountID") int accountID);


    @Transactional
    @Modifying
    @Query("UPDATE Account a SET a.password = :password WHERE a.accountID = :accountID")
    void updatePassword(@Param("password") String password, @Param("accountID") int accountID);

}