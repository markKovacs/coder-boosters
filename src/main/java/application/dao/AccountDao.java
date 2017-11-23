package application.dao;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;

import java.util.List;
import java.util.Map;

public interface AccountDao {

    Account findAccountById(Long accountId);
    CustomerAccount findCustomerById(Long accountId);
    BoosterAccount findBoosterById(Long accountId);
    Account findAccountByName(String accountName);
    Long add(Account account);
    List<String> update(Long accountId, Map<String, String> inputData);
    List<String> getAllAccountNames();
    List<String> getAllEmails();
    void changeBoostCoinByAmount(Account account, int amount);
    void transferBoostCoin(BoosterAccount boosterAccount, int totalPrice);

}
