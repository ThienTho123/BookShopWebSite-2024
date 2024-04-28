package org.example.repository;

import org.example.entities.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BillInfoRepository extends JpaRepository<BillInfo, Integer> {
    @Query("SELECT b from Billinfo b where b.billID.AccountID.accountID=?1")
    List<BillInfo> findBillByAccountID (int accountid);

    BillInfo findBillInfoByBillInfoID (int billinfoid);
}
