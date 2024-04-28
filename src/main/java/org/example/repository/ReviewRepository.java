package org.example.repository;

import jakarta.transaction.Transactional;
import org.example.entities.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ReviewRepository extends JpaRepository<Review, Integer> {
    List<Review> findReviewByReviewID (int id);
    @Query("select b from Review b where b.accountID.accountID= ?1")
    List<Review>findReviewByAccountIDaccountID(int AccountID);
    @Query("select b from Review b where b.accountID.accountID= ?1 and b.bookID.bookID= ?2")
    Review findReviewByAccountAndBook(int AccountID, int bookID);

    List<Review>findReviewBybookIDBookID (int BookID);

    @Transactional
    @Modifying
    @Query("UPDATE Review r SET r.point = :point, r.comment = :comment WHERE r.reviewID = :reviewid")
    void UpdateRating(@Param("point") int point, @Param("comment") String comment, @Param("reviewid") int reviewid);

}
