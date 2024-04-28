package org.example.controller.user;

import lombok.RequiredArgsConstructor;
import org.example.entities.Account;
import org.example.entities.Cart;
import org.example.entities.Category;
import org.example.entities.Type;
import org.example.entities.Book;
import org.example.repository.CartRepository;
import org.example.services.*;
import org.example.services.securityService.AuthService;
import org.example.services.securityService.GetIDAccountFromAuthService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class PrebuyController {
    private final IAccountService accountService;
    private final ICategoryService categoryService;
    private final ITypeService typeService;
    private final AuthService authService;
    private final ICartService cartService;
    private final GetIDAccountFromAuthService getIDAccountService; // Thêm vào đây
    private final IPrebuyService prebuyService;
    private final IBookService bookService;

    @RequestMapping("/cart")
    public String Cart (Model model){
        int idAccount = getIDAccountService.common(model);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        List<Cart>carts=cartService.findCartByAccountIDAccountID(idAccount);


        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        model.addAttribute("carts", carts);
        if (idAccount!=-1)
            return "views/checkout/prebuy";
        else
            return "redirect:/login";
    }
    @PostMapping("/deleteCart")
    public void deleteCart(@RequestParam("cartID") int cartID) { // Đảm bảo tên tham số phù hợp với dữ liệu được gửi
        cartService.deleteCartByCartID(cartID);
    }
    @PostMapping("/deleteBoughtCart")
    public void deleteBoughtCart(@RequestParam("cartID") int[] cartIDs, Model model) {
        model = authService.common(model);
        int idAccount = getIDAccountService.common(model);

        Account account = accountService.getAccountById(idAccount);
        for (int cartID : cartIDs) {
            Book book = cartService.findBookByCartID(cartID);
            prebuyService.addToOrder(account, cartID);
            cartService.deleteCartByCartID(cartID);
            bookService.UpdateStock(book.getBookID());
        }
    }
}
