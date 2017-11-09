package application.utils;

import application.dao.DaoFactory;
import application.model.GameType;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.LeagueDivision;
import application.model.order.LoLBoostOrder;
import application.model.order.OrderType;

import javax.persistence.EntityManager;
import java.util.Calendar;
import java.util.Date;

import static application.App.EMFactory;

public class DataUtil {

    public static void initTestData() {

        // CREATE TEST DATA ENTITIES
        CustomerAccount customerMark = new CustomerAccount("mark", "mark@mark.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        customerMark.addGameAccountBiDir(new GameAccount("proph", "pass", GameType.OW));
        customerMark.addGameAccountBiDir(new GameAccount("elitekiller", "pass", GameType.WOW));

        CustomerAccount customerAttila = new CustomerAccount("attila", "attila@attila.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        customerAttila.addGameAccountBiDir(new GameAccount("lol_king", "pass", GameType.LOL));

        BoostOrder order1 = new LoLBoostOrder(LeagueDivision.BRONZE_III, 5, OrderType.GAMES_PLAYED,
                10, createDate(2017, 12, 18, 22));
        customerMark.addBoostOrderBiDir(order1);

        BoostOrder order2 = new LoLBoostOrder(LeagueDivision.SILVER_I, 10, OrderType.GAMES_WON,
                10, createDate(2018, 6, 5, 10));
        customerMark.addBoostOrderBiDir(order2);

        BoosterAccount boosterBarna = new BoosterAccount("barna", "barna@elite.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        //boosterBarna.addBoostOrderBiDir(order2); // TODO: BoosterOrderDao - add, (remove), etc...

        DaoFactory.getAccountDao().add(customerMark);
        DaoFactory.getAccountDao().add(customerAttila);
        DaoFactory.getAccountDao().add(boosterBarna);

    }

    public static void modifyTestData() {

        EntityManager em = EMFactory.createEntityManager();
        CustomerAccount customerAccount = em.find(CustomerAccount.class, 1L);

        GameAccount gameAccount = new GameAccount("newplayer", "pass123", GameType.CSGO);

        DaoFactory.getGameAccountDao().addGameAccount(customerAccount, gameAccount);
        DaoFactory.getGameAccountDao().removeGameAccount(customerAccount, gameAccount);
        GameAccount foundGameAcc = DaoFactory.getGameAccountDao().findGameAccount(1L);
        DaoFactory.getGameAccountDao().removeGameAccount(customerAccount, foundGameAcc);

    }

    private static Date createDate(int y, int m, int d, int h) {
        Calendar cal = Calendar.getInstance();
        cal.set(y, m, d, h, 0);
        return cal.getTime();
    }

}
