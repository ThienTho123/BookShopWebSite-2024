package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.entities.Book;
import org.example.entities.Category;
import org.example.entities.Type;
import org.example.services.IBookService;
import org.example.services.ICategoryService;
import org.example.services.ITypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class BookController {

    private final IBookService bookService;
    private final ICategoryService categoryService;
    private final ITypeService typeService;

    @RequestMapping(value = "/book/find", params = {"title"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String findBook(@RequestParam("title") String title, Model model){
        List<Book> findBook = bookService.findBookContainTittle(title);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();

        model.addAttribute("types", types);
        model.addAttribute("catgories", categories);
        model.addAttribute("findBook", findBook);
        model.addAttribute("find", title);

        return "views/list/book";
    }
}
