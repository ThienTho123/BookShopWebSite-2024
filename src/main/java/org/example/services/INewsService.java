package org.example.services;

import org.example.entities.*;

import java.util.List;

public interface INewsService {
    List<News> findTop4NewsExceptNewest();
    News findNewest();

}
