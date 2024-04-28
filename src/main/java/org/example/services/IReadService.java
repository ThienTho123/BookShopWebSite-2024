package org.example.services;

import org.example.entities.Readbefore;
import org.example.entities.Readbefore;

import java.util.List;

public interface IReadService {
    List<Readbefore> findReadByBookIDBookID(int id);

}
