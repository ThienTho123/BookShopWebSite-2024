package org.example.services;

import org.example.entities.Book;
import org.example.entities.Cart;

import java.util.List;

public interface ICartService {
    List<Cart> findCartByAccountIDAccountID(int accountid);
    void deleteCartByCartID (int id);
    Book findBookByCartID (int cartid);
    List<Cart> findCartsByCartIDs(int[] cartids);

}
