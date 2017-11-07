package application.dao;

import application.Config;

public class DaoFactory {

    public static AccountDao getAccountDao() {
        if (Config.isStorageJPA) {
            return new AccountDaoJPA();
        }
        return new AccountDaoJPA();
    }

}
