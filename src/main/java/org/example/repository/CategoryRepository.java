package org.example.repository;

import org.example.entities.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    List<Category> findCategoryByCategoryName(String CategoryName);
    Category findCategoryByCategoryID (int id);

    List<Category>findAll();

}
