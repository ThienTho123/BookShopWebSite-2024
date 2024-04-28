package org.example.controller.user;

import lombok.RequiredArgsConstructor;
import org.example.entities.*;
import org.example.repository.AccountRepository;
import org.example.services.*;
import org.example.services.securityService.AuthService;
import org.example.services.securityService.GetIDAccountFromAuthService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ProductBookController {
    private final IBookService bookService;
    private final ICategoryService categoryService;
    private final ITypeService typeService;
    private final IReviewService reviewService;
    private final IReadService readService;
    private final AuthService authService;
    private final GetIDAccountFromAuthService getIDAccountService; // Thêm vào đây
    private final IPrebuyService prebuyService;
    private final IAccountService accountService;


    @RequestMapping("/productbook/{bookid}")
    public String listcategory(@PathVariable int bookid, Model model){
        model = authService.common(model);
        int id= getIDAccountService.common(model);

        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        Book book = bookService.findBookByBookID(bookid);
        List<Readbefore> read = readService.findReadByBookIDBookID(bookid);
        List<Review> reviews=reviewService.findReviewByBookIDBookID(bookid);
        List<Book> top10=bookService.findTop10BookInCategory(bookid);

        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        model.addAttribute("book", book);
        model.addAttribute("read", read);
        model.addAttribute("reviews", reviews);
        model.addAttribute("top10", top10);
        model.addAttribute("accountid",id);
        return "views/product/productbook";
    }
    @PostMapping("/addToOrder")
    public String addToOrder(@RequestParam("bookID") Book bookID, @RequestParam("count") int count, Model model){
        model = authService.common(model);
        int AccountID=getIDAccountService.common(model);
        Account account = accountService.getAccountById(AccountID);
        prebuyService.addToCart(bookID,count,account);
        return "redirect:/cart";
    }
    @PostMapping("/addToCart")
    @ResponseBody
    public String addToCart(@RequestParam("bookID") Book bookID, @RequestParam("count") int count, Model model) {
        model = authService.common(model);
        int AccountID = getIDAccountService.common(model);
        Account account = accountService.getAccountById(AccountID);
        prebuyService.addToCart(bookID, count, account);
        return "success"; // Trả về chuỗi "success" làm phản hồi của yêu cầu Ajax
    }

}
