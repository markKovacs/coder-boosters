package application.dao;

import application.Config;

public class DaoFactory {

    public static AccountDao getAccountDao() {
        if (Config.isStorageJPA) {
            return new AccountDaoJPA();
        }
        return new AccountDaoJPA();
    }

    public static GameAccountDao getGameAccountDao() {
        if (Config.isStorageJPA) {
            return new GameAccountDaoJPA();
        }
        return new GameAccountDaoJPA();
    }

    public static BoostOrderDao getBoostOrderDao() {
        if (Config.isStorageJPA) {
            return new BoostOrderDaoJPA();
        }
        return new BoostOrderDaoJPA();
    }

}
