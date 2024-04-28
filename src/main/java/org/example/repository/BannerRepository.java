package org.example.repository;

import org.example.entities.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BannerRepository extends JpaRepository<Banner, Integer> {

    @Query("SELECT b FROM Banner b WHERE b.bannerType = 'left' ORDER BY b.bannerID DESC LIMIT 3")
    List<Banner> find3BannerLeft();

    @Query("SELECT b FROM Banner b WHERE b.bannerType = 'mid' ORDER BY b.bannerID DESC LIMIT 4")
    List<Banner> find4BannerMid();
    @Query("SELECT b FROM Banner b WHERE b.bannerType = 'right' ORDER BY b.bannerID DESC LIMIT 1")
    Banner find1BannerRight();
    @Query("SELECT b FROM Banner b WHERE b.bannerType = 'under' ORDER BY b.bannerID DESC LIMIT 4")
    List<Banner> find4BannerUnder();
}
