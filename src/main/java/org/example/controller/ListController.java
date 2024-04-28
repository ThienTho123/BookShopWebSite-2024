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
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class ListController {
    private final IBookService bookService;
    private final ICategoryService categoryService;
    private final ITypeService typeService;

    @RequestMapping("/listbook/category/{categoryid}")
    public String listcategory(@PathVariable int categoryid, Model model){
        List<Book> findBookByCategory= bookService.findBookByCategory(categoryid);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        Category categoryname = categoryService.findCategoryByCategoryID(categoryid);

        model.addAttribute("findBookByCategory", findBookByCategory);
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        model.addAttribute("categoryname", categoryname);

        return "views/list/listbook1";
    }
    @RequestMapping("/listbook/type/{typeid}")
    public String listtype(@PathVariable int typeid, Model model){
        List<Book> findBookByTypeID= bookService.findBookByTypeID(typeid);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        Type typename=typeService.findTypeByTypeID(typeid);

        model.addAttribute("findBookByTypeID", findBookByTypeID);
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        model.addAttribute("typename", typename);

        return "views/list/listbook2";
    }

    @RequestMapping("/listbook")
    public String listbook( Model model){
        List<Book> findAll = bookService.findAll();
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();

        model.addAttribute("findAll", findAll);

        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";

    }
    @RequestMapping(value = "/updateProductList", params = "age", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListAge(@RequestParam("age") int age, Model model) {
        List<Book> updatedProductListAge = bookService.findBookByAge(age);
        model.addAttribute("findAll", updatedProductListAge);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/updateProductList", params = "price", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListPrice(@RequestParam("price") float price, Model model) {
        List<Book> updatedProductListPrice = bookService.findBookByPriceBefore(price);
        model.addAttribute("findAll", updatedProductListPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/updateProductList", params = "language", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListLanguage(@RequestParam("language") String language, Model model) {
        List<Book> updatedProductListLanguage = bookService.findBookByLanguage(language);
        model.addAttribute("findAll", updatedProductListLanguage);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/updateProductList", params = {"age", "price"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListAgeAndPrice(@RequestParam("age") int age,
                                               @RequestParam("price") float price,
                                               Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByAgeAndPriceBefore(age, price);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/updateProductList", params = {"age", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListAgeAndLanguage(@RequestParam("age") int age,
                                               @RequestParam("language") String language,
                                               Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByAgeAndLanguage(age, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/updateProductList", params = {"price", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListPriceAndLanguage(@RequestParam("price") float price,
                                                  @RequestParam("language") String language,
                                                  Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByPriceBeforeAndLanguage(price, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/updateProductList", params = {"age","price", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListAgeAndPriceAndLanguage(@RequestParam("age") int age,
                                                    @RequestParam("price") float price,
                                                          @RequestParam("language") String language,
                                                    Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByAgeAndPriceBeforeAndLanguage(age,price, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }




    @RequestMapping(value = "/category/{categoryid}/updateProductList", params = "age", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListCategoryAge(@PathVariable int categoryid,@RequestParam("age") int age, Model model) {
        List<Book> updatedProductListAge = bookService.findBookByCategoryCategoryIDAndAge(categoryid,age);
        model.addAttribute("findAll", updatedProductListAge);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/category/{categoryid}/updateProductList", params = "price", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListCategoryPrice(@PathVariable int categoryid,@RequestParam("price") float price, Model model) {
        List<Book> updatedProductListPrice = bookService.findBookByCategoryCategoryIDAndPriceBefore(categoryid,price);
        model.addAttribute("findAll", updatedProductListPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/category/{categoryid}/updateProductList", params = "language", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListCategoryLanguage(@PathVariable int categoryid,@RequestParam("language") String language, Model model) {
        List<Book> updatedProductListLanguage = bookService.findBookByCategoryCategoryIDAndLanguage(categoryid,language);
        model.addAttribute("findAll", updatedProductListLanguage);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/category/{categoryid}/updateProductList", params = {"age", "price"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListCategoryAgeAndPrice(@PathVariable int categoryid,@RequestParam("age") int age,
                                               @RequestParam("price") float price,
                                               Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByCategoryCategoryIDAndAgeAndPriceBefore(categoryid,age, price);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/category/{categoryid}/updateProductList", params = {"age", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListCategoryAgeAndLanguage(@PathVariable int categoryid,@RequestParam("age") int age,
                                                  @RequestParam("language") String language,
                                                  Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByCategoryCategoryIDAndAgeAndLanguage(categoryid,age, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/category/{categoryid}/updateProductList", params = {"price", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListCategoryPriceAndLanguage(@PathVariable int categoryid,@RequestParam("price") float price,
                                                    @RequestParam("language") String language,
                                                    Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByCategoryCategoryIDAndPriceBeforeAndLanguage(categoryid,price, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/category/{categoryid}/updateProductList", params = {"age","price", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListCategoryAgeAndPriceAndLanguage(@PathVariable int categoryid,@RequestParam("age") int age,
                                                          @RequestParam("price") float price,
                                                          @RequestParam("language") String language,
                                                          Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByCategoryCategoryIDAndAgeAndPriceBeforeAndLanguage(categoryid,age,price, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }




    @RequestMapping(value = "/type/{typeid}/updateProductList", params = "age", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListTypeAge(@PathVariable int typeid,@RequestParam("age") int age, Model model) {
        List<Book> updatedProductListAge = bookService.findBookByTypeIDTypeIDAndAge(typeid,age);
        model.addAttribute("findAll", updatedProductListAge);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/type/{typeid}/updateProductList", params = "price", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListTypePrice(@PathVariable int typeid,@RequestParam("price") float price, Model model) {
        List<Book> updatedProductListPrice = bookService.findBookByTypeIDTypeIDAndPriceBefore(typeid,price);
        model.addAttribute("findAll", updatedProductListPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/type/{typeid}/updateProductList", params = "language", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListTypeLanguage(@PathVariable int typeid,@RequestParam("language") String language, Model model) {
        List<Book> updatedProductListLanguage = bookService.findBookByTypeIDTypeIDAndLanguage(typeid,language);
        model.addAttribute("findAll", updatedProductListLanguage);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }

    @RequestMapping(value = "/type/{typeid}/updateProductList", params = {"age", "price"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListTypeAgeAndPrice(@PathVariable int typeid,@RequestParam("age") int age,
                                                       @RequestParam("price") float price,
                                                       Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByTypeIDTypeIDAndAgeAndPriceBefore(typeid,age, price);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/type/{typeid}/updateProductList", params = {"age", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListTypeAgeAndLanguage(@PathVariable int typeid,@RequestParam("age") int age,
                                                          @RequestParam("language") String language,
                                                          Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByTypeIDTypeIDAndAgeAndLanguage(typeid,age, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/type/{typeid}/updateProductList", params = {"price", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListTypePriceAndLanguage(@PathVariable int typeid,@RequestParam("price") float price,
                                                            @RequestParam("language") String language,
                                                            Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByTypeIDTypeIDAndPriceBeforeAndLanguage(typeid,price, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
    @RequestMapping(value = "/type/{typeid}/updateProductList", params = {"age","price", "language"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProductListTypeAgeAndPriceAndLanguage(@PathVariable int typeid,@RequestParam("age") int age,
                                                                  @RequestParam("price") float price,
                                                                  @RequestParam("language") String language,
                                                                  Model model) {
        List<Book> updatedProductListAgeAndPrice = bookService.findBookByTypeIDTypeIDAndAgeAndPriceBeforeAndLanguage(typeid,age,price, language);
        model.addAttribute("findAll", updatedProductListAgeAndPrice);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        return "views/list/listbook";
    }
}
