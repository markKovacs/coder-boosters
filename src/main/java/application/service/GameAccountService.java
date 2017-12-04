package application.service;

import application.dao.GameAccountDao;
import application.model.GameType;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import org.springframework.stereotype.Service;

import java.util.Map;
@Service
public class GameAccountService {

    private GameAccountDao gameAccountDao;

    public GameAccountService(GameAccountDao gameAccountDao) {
        this.gameAccountDao = gameAccountDao;
    }

    public GameAccount create(Map<String, String> inputData, CustomerAccount account) {
        String accountName = inputData.get("gameAccName");
        String password = inputData.get("gameAccPassword");
        GameType gameType = GameType.valueOf(inputData.get("gameType"));

        GameAccount gameAccount = new GameAccount(accountName, password, gameType);

        return gameAccountDao.addGameAccount(account, gameAccount);
    }

}
