package org.example.services;

import org.example.entities.BillInfo;

import java.util.List;

public interface IBillInfoService {
    List<BillInfo>findBillInfoByBillIDAccountID(int idaccount);
    BillInfo findBillInfoByBillInfoID (int billinfoid);

}
