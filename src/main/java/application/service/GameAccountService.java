package application.service;

import application.model.GameType;
import application.model.account.Account;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.repository.GameAccountRepository;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class GameAccountService {

    private GameAccountRepository gameAccountRepository;

    public GameAccountService(GameAccountRepository gameAccountRepository) {
        this.gameAccountRepository = gameAccountRepository;
    }

    public GameAccount create(Map<String, String> inputData, Account account) {
        String accountName = inputData.get("gameAccName");
        String password = inputData.get("gameAccPassword");
        GameType gameType = GameType.valueOf(inputData.get("gameType"));

        GameAccount gameAccount = new GameAccount(accountName, password, gameType);

        ((CustomerAccount) account).addGameAccountBiDir(gameAccount);

        // TODO: 12/5/17 Check if this is needed or not!
        //accountRepository.save(account);

        return gameAccountRepository.save(gameAccount);
    }

}
