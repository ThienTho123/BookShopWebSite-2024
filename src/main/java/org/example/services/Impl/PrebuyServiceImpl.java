package org.example.services.Impl;

import org.example.entities.*;
import org.example.services.IPrebuyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.example.repository.*;

import java.util.Optional;

@Service
public class PrebuyServiceImpl  implements IPrebuyService {
    @Autowired
    private BillRepository billRepository;
    @Autowired
    private BillInfoRepository billInfoRepository;
    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private AccountRepository accountRepository;
    @Override
    public void addToOrder(Account account, int cartid) {
                Optional<Bill>  bill = billRepository.findUnpaidBillbyAccountID(account.getAccountID()).stream().findFirst();

                Bill existingBill = bill.orElse(null);
                if (existingBill != null) {

                    createBillInfo(existingBill, cartid);
                } else {

                    Bill newBill = new Bill();
                    newBill.setAccountID(account);
                    newBill.setPaid(false); // Gán paid cho Bill mới

                    // Lưu Bill mới để tạo ra idBill
                    billRepository.save(newBill);
                    // Tạo BillInfo mới sử dụng Bill mới
            createBillInfo(newBill, cartid);
        }
    }

    private void createBillInfo(Bill billID, int cartid ) {
        // Tạo một Billinfo mới
        Book bookid = cartRepository.findBookByCartID(cartid);
        int count = cartRepository.findNumberByCartID(cartid);

        BillInfo billInfo = new BillInfo();
        billInfo.setBillID(billID);

        billInfo.setBookid(bookid);

        // Đặt các thuộc tính khác
        billInfo.setNumber(count);



        // Lưu Billinfo để tạo ra idBillInfo
        billInfoRepository.save(billInfo);
    }
    @Override
    public void addToCart(Book bookID, int count, Account account) {
        Cart cart = new Cart();
        cart.setAccountID(account);
        cart.setBookid(bookID);
        cart.setNumber(count);

        cartRepository.save(cart);
    }
}
