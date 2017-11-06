package application.dao;

import application.model.Account;

public interface AccountDao {

    Long add(Account account);
    Account find(Long userId);
    void update(Long userId, String name);

}
