package org.example.services.Impl;

import org.example.entities.Readbefore;
import org.example.entities.Readbefore;
import org.example.repository.ReadRepository;
import org.example.services.IReadService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReadServiceImpl implements IReadService {

    private final ReadRepository readRepository;

    public ReadServiceImpl(ReadRepository readRepository) {
        this.readRepository = readRepository;
    }

    @Override
    public List<Readbefore> findReadByBookIDBookID(int id) {
        return readRepository.findReadbeforeBybookIDBookID(id);
    }
}
