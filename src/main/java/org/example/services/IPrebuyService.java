package org.example.services;

import org.example.entities.Account;
import org.example.entities.Book;

public interface IPrebuyService {
    void addToOrder(Account account, int cartid);
    void addToCart(Book bookID, int count, Account idAccount);
}
