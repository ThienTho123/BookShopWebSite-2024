package org.example.services;

import org.example.entities.Type;

import java.util.List;

public interface ITypeService {
    List<Type> findAll();
    Type  findTypeByTypeID (int id);
}
