package org.example.repository;

import org.example.entities.Book;
import org.example.entities.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
    @Query("SELECT b FROM Cart b WHERE b.AccountID.accountID = ?1")
    List<Cart> findCartByAccount (int accountid);

    @Modifying
    @Query("DELETE FROM Cart b WHERE b.cartID = :id")
    void deleteByID(@Param("id") int id);

    @Query("SELECT b.bookid FROM Cart b WHERE b.cartID = ?1")
    Book findBookByCartID (int accountid);
    @Query("SELECT b.number FROM Cart b WHERE b.cartID = ?1")
    int findNumberByCartID (int accountid);

    @Query("SELECT b FROM Cart b WHERE b.cartID IN ?1")
    List<Cart> findCartsByCartIDs(int[] cartids);

}
