package application.dao;

import application.model.account.Account;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;

public interface GameAccountDao {

    GameAccount addGameAccount(Account customerAccount, GameAccount gameAccount);

    void removeGameAccount(CustomerAccount customerAccount, GameAccount gameAccount);

    GameAccount findGameAccount(Long gameAccountId);
}
