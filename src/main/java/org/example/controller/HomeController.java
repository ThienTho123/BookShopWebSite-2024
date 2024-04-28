package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.services.securityService.AuthService;
import org.example.services.securityService.GetIDAccountFromAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.example.repository.*;
import org.example.services.*;
import org.example.entities.*;

import java.io.Console;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final AccountRepository repository;
    private final IBookService bookService;
    private final IBannerService bannerService;
    private final INewsService newsService;
    private final ICategoryService categoryService;
    private final ITypeService typeService;
    private final AuthService authService;
    private final GetIDAccountFromAuthService getIDAccountService; // Thêm vào đây

    @RequestMapping({"/","/bookshop"})
    public String bookshop(Model model) {
        model = authService.common(model);
        News newest = newsService.findNewest();
        List<News> top4news = newsService.findTop4NewsExceptNewest();
        List<Book> hotbooks = bookService.findTop10HotBooks();
        List<Book> newbooks = bookService.findTop15NewBooks();
        List<Book> comicbooks = bookService.findTop15ComicBooks();
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        List<Banner> bannersleft = bannerService.find3BannerLeft();
        List<Banner> bannersmid = bannerService.find4BannerMid();
        Banner bannersright = bannerService.find1BannerRight();
        List<Banner> bannersunder = bannerService.find4BannerUnder();
        int idAccount = getIDAccountService.common(model);

        model.addAttribute("newest", newest);
        model.addAttribute("top4news", top4news);
        model.addAttribute("hotbooks", hotbooks);
        model.addAttribute("newbooks", newbooks);
        model.addAttribute("comicbooks", comicbooks);
        model.addAttribute("bannersleft", bannersleft);
        model.addAttribute("bannersmid", bannersmid);
        model.addAttribute("bannersright", bannersright);
        model.addAttribute("bannersunder", bannersunder);
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        System.out.println("AccountID=" + idAccount);

        return "home";
    }
}

