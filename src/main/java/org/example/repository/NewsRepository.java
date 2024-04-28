package org.example.repository;

import org.example.entities.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NewsRepository extends JpaRepository<News, Integer> {
    @Query("SELECT b FROM News b ORDER BY b.newsID DESC LIMIT 1")
    News findNewest();
    @Query("SELECT b FROM News b WHERE b.newsID < (SELECT MAX(n.newsID) FROM News n) ORDER BY b.newsID DESC")
    List<News> findTop4NewsExceptNewest();

}
