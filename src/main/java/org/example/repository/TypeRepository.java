package org.example.repository;

import org.example.entities.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TypeRepository extends JpaRepository<Type, Integer> {
    Type findTypeByTypeID (int id);
    List<Type> findTypeByTypeName (String Name);
    List<Type>findAll();

}
