package org.example.services.Impl;

import jakarta.transaction.Transactional;
import org.example.entities.Book;
import org.example.entities.Cart;
import org.example.repository.CartRepository;
import org.example.services.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements ICartService {
    @Autowired
    private CartRepository cartRepository;
    @Override
    public List<Cart> findCartByAccountIDAccountID(int accountid) {
        return cartRepository.findCartByAccount(accountid);
    }

    @Override
    @Transactional
    public void deleteCartByCartID(int id) {
        cartRepository.deleteByID(id);
    }
    @Override
    public Book findBookByCartID (int cartid){
        return cartRepository.findBookByCartID(cartid);
    }

    @Override
    public List<Cart> findCartsByCartIDs(int[] cartids) {
        return cartRepository.findCartsByCartIDs(cartids);
    }
}
