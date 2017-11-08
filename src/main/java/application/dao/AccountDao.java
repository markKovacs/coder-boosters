package application.dao;

import application.model.Account;

import java.util.List;
import java.util.Map;

public interface AccountDao {

    Long add(Account account);
    Account find(Long accountId);
    Account find(String accountName);
    List<String> update(Long accountId, Map<String, String> inputData);

    List<String> getAllAccountNames();
    List<String> getAllEmails();
}
