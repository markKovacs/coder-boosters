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

        // CREATE TEST DATA ENTITIES
        CustomerAccount customerMark = new CustomerAccount("mark", "mark@mark.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        customerMark.addGameAccountBiDir(new GameAccount("proph", "pass", GameType.OW));
        customerMark.addGameAccountBiDir(new GameAccount("elitekiller", "pass", GameType.WOW));

        CustomerAccount customerAttila = new CustomerAccount("attila", "attila@attila.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        customerAttila.addGameAccountBiDir(new GameAccount("lol_king", "pass", GameType.LOL));

        BoostOrder order1 = new LoLBoostOrder(LeagueDivision.BRONZE_III, 5, OrderType.GAMES_PLAYED,
                10, dataUtil.createDate(2017, 12, 18, 22));
        customerMark.addBoostOrderBiDir(order1);

        BoostOrder order2 = new LoLBoostOrder(LeagueDivision.SILVER_I, 10, OrderType.GAMES_WON,
                10, dataUtil.createDate(2018, 6, 5, 10));
        customerMark.addBoostOrderBiDir(order2);

        BoosterAccount boosterBarna = new BoosterAccount("barna", "barna@elite.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");

        accountDao.add(customerMark);
        accountDao.add(customerAttila);
        accountDao.add(boosterBarna);

    }

    public void modifyTestData() {

        CustomerAccount customerAccount = accountDao.findCustomerById(1L);
        BoosterAccount boosterAccount = accountDao.findBoosterById(3L);

        GameAccount gameAccount = new GameAccount("newplayer", "pass123", GameType.CSGO);

        gameAccountDao.addGameAccount(customerAccount, gameAccount);
        gameAccountDao.removeGameAccount(customerAccount, gameAccount);

        GameAccount foundGameAcc = gameAccountDao.findGameAccount(1L);
        gameAccountDao.removeGameAccount(customerAccount, foundGameAcc);

        BoostOrder newBoostOrder1 = new LoLBoostOrder(LeagueDivision.GOLD_V, 20, OrderType.GAMES_WON,
                20, dataUtil.createDate(2020, 6, 5, 10));
        orderDao.addBoostOrder(customerAccount, newBoostOrder1);
        orderDao.addBoostOrder(boosterAccount, newBoostOrder1);

        BoostOrder newBoostOrder2 = new LoLBoostOrder(LeagueDivision.CHALLENGER, 20, OrderType.GAMES_WON,
                20, dataUtil.createDate(2030, 6, 5, 10));
        Long anAddedId = orderDao.addBoostOrder(customerAccount, newBoostOrder2);

        BoostOrder newBoostOrder3 = new LoLBoostOrder(LeagueDivision.DIAMOND_I, 20, OrderType.GAMES_WON,
                20, dataUtil.createDate(2040, 6, 5, 10));
        Long lastAddedId = orderDao.addBoostOrder(customerAccount, newBoostOrder3);

        BoostOrder foundBoostOrder = orderDao.findBoostOrder(lastAddedId);
        orderDao.removeBoostOrder(customerAccount, foundBoostOrder);

        BoostOrder anotherFoundBoostOrder = orderDao.findBoostOrder(anAddedId);
        orderDao.setStatus(anotherFoundBoostOrder, Status.DONE);

        System.out.println(anotherFoundBoostOrder.getStatus());
        BoostOrder anotherFoundBoostOrder2 = orderDao.findBoostOrder(anAddedId);
        System.out.println(anotherFoundBoostOrder2.getStatus());

    }
}
