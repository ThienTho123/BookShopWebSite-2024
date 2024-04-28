package org.example.services.Impl;

import org.example.entities.BillInfo;
import org.example.repository.BillInfoRepository;
import org.example.repository.BillRepository;
import org.example.services.IBillInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BillInfoServiceImpl implements IBillInfoService {
    @Autowired
    private  BillInfoRepository billInfoRepository;
    @Override
    public List<BillInfo> findBillInfoByBillIDAccountID(int idaccount) {
        return billInfoRepository.findBillByAccountID(idaccount);
    }

    @Override
    public BillInfo findBillInfoByBillInfoID(int billinfoid) {
        return billInfoRepository.findBillInfoByBillInfoID(billinfoid);
    }
}
