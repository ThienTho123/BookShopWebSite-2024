package org.example.repository;



import jakarta.transaction.Transactional;
import org.example.entities.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BookRepository  extends JpaRepository<Book, Integer> {
    Book findBookByBookID(int id);
    List<Book> findBookByAgeAndPriceBeforeAndLanguage (int Age, float Price, String Language);
    List<Book> findBookByAge (int Age);
    List<Book> findBookByPriceBefore (float Price);
    List<Book> findBookByLanguage(String Language);
    List<Book> findBookByAgeAndPriceBefore(int Age, float Price);
    List<Book> findBookByAgeAndLanguage (int Age, String Language);
    List<Book> findBookByPriceBeforeAndLanguage (float Price, String Language);
    @Query("SELECT b FROM Book b WHERE b.title LIKE %:title%")
    List<Book> findBookContainTittle(String title);
    List<Book> findBookByCategoryCategoryID (int category);
    @Query("SELECT b FROM Book b WHERE b.category.categoryID = 6 ORDER BY b.bookID DESC LIMIT 10")
    List<Book> findTop10HotBooks();
    @Query("SELECT b FROM Book b  ORDER BY b.bookID DESC LIMIT 15")
    List<Book> findTop15NewBooks();
    @Query("SELECT b FROM Book b WHERE b.category.categoryID = 4 ORDER BY b.bookID DESC LIMIT 15")
    List<Book> findTop15ComicBooks();

    List<Book> findBookByTypeIDTypeID( int typeid);

    @Query("SELECT b FROM Book b ORDER BY b.bookID DESC")
    List<Book> findAllOrderedByIdDesc();

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

    @Query("SELECT b FROM Book b WHERE b.category.categoryID = (SELECT b.category.categoryID FROM Book b where b.bookID=?1) ORDER BY b.bookID DESC LIMIT 10")
    List<Book> findTop10BookInCategory(int bookid);
    @Transactional
    @Modifying
    @Query("UPDATE Book b SET b.stock = b.stock-1 WHERE b.bookID = :bookid")
    void UpdateStock(@Param("bookid") int bookid);
}
