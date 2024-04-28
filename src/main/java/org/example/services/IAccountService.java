package org.example.services;

import org.example.entities.Account;

import java.util.List;
import java.util.Optional;

public interface IAccountService {
    List<Account> getAllAccounts();

    Account getAccountById(Integer accountId);

    Account createAccount(Account account);

    Account updateAccount(Integer accountId, Account updatedAccount);


    Account findAccountByAccountID(int accountid);

    void updateAddressEmailPhoneNumberAccount(String name, String phoneNumber, String address, int accountID);
    void updatePassword(String password, int accountID);
    Optional<Account> findAccountByEmail (String email);
    <S extends Account> S save(S entity);

}
