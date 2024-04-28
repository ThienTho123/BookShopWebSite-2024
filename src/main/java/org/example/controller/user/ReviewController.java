package org.example.controller.user;


import lombok.RequiredArgsConstructor;
import org.example.entities.*;
import org.example.services.*;
import org.example.services.securityService.AuthService;
import org.example.services.securityService.GetIDAccountFromAuthService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ReviewController {
    private final AuthService authService;
    private final GetIDAccountFromAuthService getIDAccountService;
    private final IAccountService accountService;
    private final ICategoryService categoryService;
    private final ITypeService typeService;
    private final IBookService bookService;
    private final IBillInfoService billInfoService;
    private final IReviewService reviewService;
    @RequestMapping("/editreview/{bookid}")
    public String EditReviews (@PathVariable int bookid, Model model){
        model = authService.common(model);
        int idAccount = getIDAccountService.common(model);
        Account account = accountService.findAccountByAccountID(idAccount);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        List<BillInfo> billinfo = billInfoService.findBillInfoByBillIDAccountID(idAccount);
        Review reviews = reviewService.findReviewByAccountAndBook(idAccount, bookid);

        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        model.addAttribute("billinfo", billinfo);
        model.addAttribute("account", account);
        model.addAttribute("review", reviews);
        if (idAccount!=-1)
            return "views/auth/editreview";
        else
            return "redirect:/login";
    }
    @PostMapping("/updaterating")
    public void UpdateRating(@RequestParam("activeRating") int activeRating, @RequestParam("inputValue") String inputValue,@RequestParam("reviewid") int  reviewid, Model model){
        model = authService.common(model);
        int AccountID=getIDAccountService.common(model);
        reviewService.UpdateRating(activeRating,inputValue,reviewid);
    }
    @RequestMapping("/review/{billinfID}")
    public String Reviews (@PathVariable int billinfID, Model model){
        model = authService.common(model);
        int idAccount = getIDAccountService.common(model);
        Account account = accountService.findAccountByAccountID(idAccount);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        BillInfo billinfo = billInfoService.findBillInfoByBillInfoID(billinfID);

        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        model.addAttribute("billinfo", billinfo);
        model.addAttribute("account", account);
        model.addAttribute("billinfo", billinfo);

        if (idAccount!=-1)
            return "views/auth/review";
        else
            return "redirect:/login";
    }
    @PostMapping("/createreview")
    public void CreateReview(@RequestParam("activeRating") int activeRating, @RequestParam("inputValue") String inputValue,@RequestParam("bookid") int  bookid, Model model){
        model = authService.common(model);
        int AccountID=getIDAccountService.common(model);
        Account accountid = accountService.findAccountByAccountID(AccountID);
        Book book = bookService.findBookByBookID(bookid);
        reviewService.createreview(activeRating,inputValue,book,accountid);
    }
}
