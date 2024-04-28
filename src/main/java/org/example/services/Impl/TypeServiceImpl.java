package org.example.services.Impl;

import org.example.entities.Category;
import org.example.entities.Type;
import org.example.repository.CategoryRepository;
import org.example.repository.TypeRepository;
import org.example.services.ICategoryService;
import org.example.services.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeServiceImpl  implements ITypeService {
    @Autowired
    private TypeRepository typeRepository;



    @Override
    public List<Type> findAll() {
        return typeRepository.findAll();
    }

    @Override
    public Type findTypeByTypeID(int id) {
        return typeRepository.findTypeByTypeID(id);
    }
}