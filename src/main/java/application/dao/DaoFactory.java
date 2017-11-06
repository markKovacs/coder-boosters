package application.dao;

import application.Config;

public class DaoFactory {

    public static AccountDao getUserDao() {
        if (Config.isStorageJPA) {
            return new AccountDaoJPA();
        }
        return null;
    }

}
