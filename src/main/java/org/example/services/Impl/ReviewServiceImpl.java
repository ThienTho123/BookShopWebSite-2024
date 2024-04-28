package org.example.services.Impl;

import jakarta.transaction.Transactional;
import org.example.entities.Account;
import org.example.entities.Book;
import org.example.entities.Cart;
import org.example.entities.Review;
import org.example.repository.BannerRepository;
import org.example.repository.ReviewRepository;
import org.example.services.IReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewServiceImpl implements IReviewService {
    @Autowired
    private ReviewRepository reviewRepository;

    @Override
    public List<Review> findReviewByBookIDBookID(int id) {
        return reviewRepository.findReviewBybookIDBookID(id);
    }

    @Override
    public List<Review> findReviewByAccountIDAccountID(int id) {
        return reviewRepository.findReviewByAccountIDaccountID(id);
    }

    @Override
    public Review findReviewByAccountAndBook(int AccountID, int bookID) {
        return reviewRepository.findReviewByAccountAndBook(AccountID, bookID);
    }

    @Override
    @Transactional
    public void UpdateRating(int point, String comment, int reviewid) {
        reviewRepository.UpdateRating(point, comment, reviewid);
    }
    @Override
    public void createreview(int point, String comment, Book bookid, Account accountid) {
        Review review= new Review();
        review.setAccountID(accountid);
        review.setPoint(point);
        review.setComment(comment);
        review.setBookID(bookid);
        reviewRepository.save(review);
    }
}
