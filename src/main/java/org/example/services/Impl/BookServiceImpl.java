package org.example.services.Impl;

import org.example.entities.*;
import org.example.repository.*;
import org.example.services.*;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookServiceImpl implements IBookService {
    private final BookRepository bookRepository;

    public BookServiceImpl(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @Override
    public Book findBookById(int id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        return optionalBook.orElse(null);
    }

    @Override
    public List<Book> findTop10HotBooks() {
        return bookRepository.findTop10HotBooks();
    }

    @Override
    public List<Book> findTop15NewBooks() {
        return bookRepository.findTop15NewBooks();
    }

    @Override
    public List<Book> findTop15ComicBooks() {
        return bookRepository.findTop15ComicBooks();
    }


    @Override
    public List<Book> findAll() {
        return bookRepository.findAllOrderedByIdDesc();
    }

    @Override
    public Book findBookByBookID(int id) {
        return bookRepository.findBookByBookID(id);
    }

    @Override
    public List<Book> findBookByAgeAndPriceBeforeAndLanguage(int Age, float Price, String Language) {
        return bookRepository.findBookByAgeAndPriceBeforeAndLanguage(Age, Price, Language);
    }


    @Override
    public List<Book> findBookByAge(int Age) {
        return bookRepository.findBookByAge(Age);
    }

    @Override
    public List<Book> findBookByPriceBefore(float Price) {
        return bookRepository.findBookByPriceBefore(Price);
    }

    @Override
    public List<Book> findBookByLanguage(String Language) {
        return bookRepository.findBookByLanguage(Language);
    }

    @Override
    public List<Book> findBookByAgeAndPriceBefore(int Age, float Price) {
        return bookRepository.findBookByAgeAndPriceBefore(Age, Price);
    }

    @Override
    public List<Book> findBookByAgeAndLanguage(int Age, String Language) {
        return bookRepository.findBookByAgeAndLanguage(Age, Language);
    }

    @Override
    public List<Book> findBookByPriceBeforeAndLanguage(float Price, String Language) {
        return bookRepository.findBookByPriceBeforeAndLanguage(Price, Language);
    }

    @Override
    public List<Book> findBookContainTittle(String Title) {
        return bookRepository.findBookContainTittle(Title);
    }

    @Override
    public List<Book> findBookByCategory(int categoryID) {
        return bookRepository.findBookByCategoryCategoryID(categoryID);
    }

    @Override
    public List<Book> findBookByTypeID(int typeid) {
        return bookRepository.findBookByTypeIDTypeID(typeid);
    }

    @Override
    public List<Book> findBookByCategoryCategoryIDAndAge(int category, int age) {
        return bookRepository.findBookByCategoryCategoryIDAndAge(category, age);
    }

    @Override
    public List<Book> findBookByCategoryCategoryIDAndPriceBefore(int category, float price) {
        return bookRepository.findBookByCategoryCategoryIDAndPriceBefore(category, price);
    }

    @Override
    public List<Book> findBookByCategoryCategoryIDAndLanguage(int category, String language) {
        return bookRepository.findBookByCategoryCategoryIDAndLanguage(category, language);
    }

    @Override
    public List<Book> findBookByCategoryCategoryIDAndAgeAndPriceBefore(int category, int age, float price) {
        return bookRepository.findBookByCategoryCategoryIDAndAgeAndPriceBefore(category, age, price);
    }

    @Override
    public List<Book> findBookByCategoryCategoryIDAndAgeAndLanguage(int category, int age, String language) {
        return bookRepository.findBookByCategoryCategoryIDAndAgeAndLanguage(category, age, language);
    }

    @Override
    public List<Book> findBookByCategoryCategoryIDAndPriceBeforeAndLanguage(int category, float price, String language) {
        return bookRepository.findBookByCategoryCategoryIDAndPriceBeforeAndLanguage(category, price, language);
    }

    @Override
    public List<Book> findBookByCategoryCategoryIDAndAgeAndPriceBeforeAndLanguage(int category, int age, float price, String language) {
        return bookRepository.findBookByCategoryCategoryIDAndAgeAndPriceBeforeAndLanguage(category, age, price, language);
    }

    @Override
    public List<Book> findBookByTypeIDTypeIDAndAge(int typeid, int age) {
        return bookRepository.findBookByTypeIDTypeIDAndAge(typeid, age);
    }

    @Override
    public List<Book> findBookByTypeIDTypeIDAndPriceBefore(int typeid, float price) {
        return bookRepository.findBookByTypeIDTypeIDAndPriceBefore(typeid, price);
    }

    @Override
    public List<Book> findBookByTypeIDTypeIDAndLanguage(int typeid, String language) {
        return bookRepository.findBookByTypeIDTypeIDAndLanguage(typeid, language);
    }

    @Override
    public List<Book> findBookByTypeIDTypeIDAndAgeAndPriceBefore(int typeid, int age, float price) {
        return bookRepository.findBookByTypeIDTypeIDAndAgeAndPriceBefore(typeid, age, price);
    }

    @Override
    public List<Book> findBookByTypeIDTypeIDAndAgeAndLanguage(int typeid, int age, String language) {
        return bookRepository.findBookByTypeIDTypeIDAndAgeAndLanguage(typeid, age, language);
    }

    @Override
    public List<Book> findBookByTypeIDTypeIDAndPriceBeforeAndLanguage(int typeid, float price, String language) {
        return bookRepository.findBookByTypeIDTypeIDAndPriceBeforeAndLanguage(typeid, price, language);
    }

    @Override
    public List<Book> findBookByTypeIDTypeIDAndAgeAndPriceBeforeAndLanguage(int typeid, int age, float price, String language) {
        return bookRepository.findBookByTypeIDTypeIDAndAgeAndPriceBeforeAndLanguage(typeid, age, price, language);
    }

    @Override
    public List<Book> findTop10BookInCategory(int categoryid) {
        return bookRepository.findTop10BookInCategory(categoryid);
    }

    @Override
    public void UpdateStock(int bookid) {
        bookRepository.UpdateStock(bookid);
    }
}
