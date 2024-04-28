package org.example.services.Impl;

import org.example.entities.Banner;
import org.example.entities.Category;
import org.example.repository.BannerRepository;
import org.example.repository.CategoryRepository;
import org.example.services.IBannerService;
import org.example.services.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl  implements ICategoryService {
    @Autowired
    private CategoryRepository categoryRepository;



    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public Category findCategoryByCategoryID(int id) {
        return categoryRepository.findCategoryByCategoryID(id);
    }
}