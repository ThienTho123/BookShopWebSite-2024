package org.example.services;

import org.example.entities.Category;
import org.example.repository.CategoryRepository;

import java.util.List;

public interface ICategoryService {
    List<Category> findAll ();
    Category findCategoryByCategoryID(int id);
}
