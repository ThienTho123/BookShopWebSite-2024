package org.example.services;

import org.example.entities.*;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IBookService {
    Book findBookById (int id);
    List<Book> findTop10HotBooks();
    List<Book> findTop15NewBooks();

    List<Book> findTop15ComicBooks();

    List<Book> findAll();
    Book findBookByBookID(int id);
    List<Book> findBookByAgeAndPriceBeforeAndLanguage (int Age, float Price, String Language);
    List<Book> findBookByAge (int Age);
    List<Book> findBookByPriceBefore (float Price);
    List<Book> findBookByLanguage(String Language);
    List<Book> findBookByAgeAndPriceBefore(int Age, float Price);
    List<Book> findBookByAgeAndLanguage (int Age, String Language);
    List<Book> findBookByPriceBeforeAndLanguage (float Price, String Language);
    List<Book> findBookContainTittle (String Title);
    List<Book> findBookByCategory (int categoryID);

    List<Book> findBookByTypeID(int typeid);
    List<Book> findBookByCategoryCategoryIDAndAge (int category, int age);
    List<Book> findBookByCategoryCategoryIDAndPriceBefore (int category, float price);
    List<Book> findBookByCategoryCategoryIDAndLanguage (int category, String language);
    List<Book> findBookByCategoryCategoryIDAndAgeAndPriceBefore (int category, int age, float price);
    List<Book> findBookByCategoryCategoryIDAndAgeAndLanguage (int category, int age, String language);
    List<Book> findBookByCategoryCategoryIDAndPriceBeforeAndLanguage (int category, float price, String language);
    List<Book> findBookByCategoryCategoryIDAndAgeAndPriceBeforeAndLanguage (int category, int age, float price, String language);

    List<Book> findBookByTypeIDTypeIDAndAge (int typeid, int age);
    List<Book> findBookByTypeIDTypeIDAndPriceBefore (int typeid, float price);
    List<Book> findBookByTypeIDTypeIDAndLanguage (int typeid, String language);
    List<Book> findBookByTypeIDTypeIDAndAgeAndPriceBefore (int typeid, int age, float price);
    List<Book> findBookByTypeIDTypeIDAndAgeAndLanguage (int typeid, int age, String language);
    List<Book> findBookByTypeIDTypeIDAndPriceBeforeAndLanguage (int typeid, float price, String language);
    List<Book> findBookByTypeIDTypeIDAndAgeAndPriceBeforeAndLanguage (int typeid, int age, float price, String language);
    List<Book> findTop10BookInCategory(int categoryid);

    void UpdateStock(int bookid);

}
