package org.example.services.Impl;

import org.example.entities.*;
import org.example.repository.*;
import org.example.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements INewsService {
    @Autowired
    private NewsRepository newsRepository;
    @Override
    public List<News> findTop4NewsExceptNewest() {
        return newsRepository.findTop4NewsExceptNewest();
    }

    @Override
    public News findNewest() {
        return newsRepository.findNewest();
    }
}
