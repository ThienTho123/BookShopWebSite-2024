package org.example.services;

import org.example.entities.Account;
import org.example.entities.Book;
import org.example.entities.Review;

import java.util.List;

public interface IReviewService {
    List<Review> findReviewByBookIDBookID(int id);
    List<Review> findReviewByAccountIDAccountID (int id);
    Review findReviewByAccountAndBook(int AccountID, int bookID);
    void UpdateRating(int point, String comment, int reviewid);
    void createreview(int point, String comment, Book bookid, Account accountid);

}
