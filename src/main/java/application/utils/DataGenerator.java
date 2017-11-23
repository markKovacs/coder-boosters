package application.utils;

import application.dao.AccountDao;
import application.dao.OrderDao;
import application.dao.GameAccountDao;
import application.model.GameType;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.model.order.*;

public class DataGenerator {
    private AccountDao accountDao;
    private OrderDao orderDao;
    private GameAccountDao gameAccountDao;
    private DataUtil dataUtil;

    public DataGenerator(AccountDao accountDao, OrderDao orderDao, GameAccountDao gameAccountDao, DataUtil dataUtil) {
        this.accountDao = accountDao;
        this.orderDao = orderDao;
        this.gameAccountDao = gameAccountDao;
        this.dataUtil = dataUtil;
    }

    public void initTestData() {

        CustomerAccount customerMark = new CustomerAccount("mark", "mark@mark.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        CustomerAccount customerAttila = new CustomerAccount("attila", "attila@attila.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        BoosterAccount boosterBarna = new BoosterAccount("barna", "barna@elite.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");

/*
        CustomerAccount customerMark = new CustomerAccount("mark", "mark@mark.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        GameAccount marksLoLAccount = new GameAccount("proph", "pass", GameType.LOL);
        customerMark.addGameAccountBiDir(marksLoLAccount);

        CustomerAccount customerAttila = new CustomerAccount("attila", "attila@attila.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        customerAttila.addGameAccountBiDir(new GameAccount("lol_king", "pass", GameType.LOL));

        BoostOrder order1 = new LoLBoostOrder(LeagueDivision.BRONZE_III, 5, OrderType.GAMES_PLAYED,
                10, dataUtil.createDate(2017, 12, 18, 22));
        customerMark.addBoostOrderBiDir(order1);

        BoostOrder order2 = new LoLBoostOrder(LeagueDivision.SILVER_I, 10, OrderType.GAMES_WON,
                10, dataUtil.createDate(2018, 6, 5, 10));
        customerMark.addBoostOrderBiDir(order2);

        BoosterAccount boosterBarna = new BoosterAccount("barna", "barna@elite.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
*/

        accountDao.add(customerMark);
        accountDao.add(customerAttila);
        accountDao.add(boosterBarna);

    }

}
