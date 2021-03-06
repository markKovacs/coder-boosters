package application.service;

import application.model.GameType;
import application.model.account.Account;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.repository.AccountRepository;
import application.repository.GameAccountRepository;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class GameAccountService {

    private GameAccountRepository gameAccountRepository;
    private AccountRepository accountRepository;

    public GameAccountService(GameAccountRepository gameAccountRepository, AccountRepository accountRepository) {
        this.gameAccountRepository = gameAccountRepository;
        this.accountRepository = accountRepository;
    }

    public GameAccount create(Map<String, String> inputData, Account account) {
        String accountName = inputData.get("gameAccName");
        String password = inputData.get("gameAccPassword");
        GameType gameType = GameType.valueOf(inputData.get("game_type"));

        GameAccount gameAccount = new GameAccount(accountName, password, gameType);

        // TODO: GameAccounts are not being persisted currently
        // TODO: commented lines might be needed later

        // account = accountRepository.save(account);
        ((CustomerAccount) account).addGameAccountBiDir(gameAccount);
        // accountRepository.save(account);

        return gameAccountRepository.save(gameAccount);
    }

}
