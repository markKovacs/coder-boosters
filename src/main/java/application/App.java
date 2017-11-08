package application;

import application.controller.AccountController;
import application.controller.IndexController;
import application.model.*;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.LeagueDivision;
import application.model.order.LoLBoostOrder;
import application.model.order.OrderType;
import application.utils.Path;
import javax.persistence.*;

import java.util.Calendar;
import java.util.Date;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class App {

    // DECLARE ENTITY MANAGER FACTORY
    public static EntityManagerFactory EMFactory;

    public static void main(String[] args) {

        // INIT ENTITY MANAGER FACTORY
        EMFactory = Persistence.createEntityManagerFactory("jpaTestingPU");

        // INIT TEST DATA
        initTestData();

        // SERVER SETTINGS
        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(8888);

        // ENABLE DEBUG SCREEN
        if (Config.isDevEnv) enableDebugScreen();

        // ROUTING ENDPOINTS
        get(Path.Web.INDEX, IndexController.serveIndexPage);
        get(Path.Web.LOGIN, AccountController.serveLoginPage);
        get(Path.Web.REGISTER, AccountController.serveRegistrationPage);
        get(Path.Web.CUSTOMER_PROFILE, AccountController.serveCustomerProfilePage);

        post(Path.Web.LOGIN, AccountController.handleLogin);
        post(Path.Web.LOGOUT, AccountController.handleLogout);
        post(Path.Web.REGISTER, AccountController.handleRegistration);
        post(Path.Web.CUSTOMER_PROFILE, AccountController.handleCustomerProfileEditing);

    }

    private static void initTestData() {
        EntityManager em = EMFactory.createEntityManager();

        // CREATE TEST DATA ENTITIES
        CustomerAccount customerMark = new CustomerAccount("mark", "mark@mark.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        customerMark.addGameAccountBiDir(new GameAccount("proph", "pass", GameType.OW));
        customerMark.addGameAccountBiDir(new GameAccount("elitekiller", "pass", GameType.WOW));

        CustomerAccount customerAttila = new CustomerAccount("attila", "attila@attila.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        customerAttila.addGameAccountBiDir(new GameAccount("lol_king", "pass", GameType.LOL));

        BoostOrder order1 = new LoLBoostOrder(LeagueDivision.BRONZE_III, 5, OrderType.GAMES_PLAYED,
                10, getDate(2017, 12, 18, 22, 0));
        customerMark.addBoostOrderBiDir(order1);

        BoostOrder order2 = new LoLBoostOrder(LeagueDivision.SILVER_I, 10, OrderType.GAMES_WON,
                10, getDate(2018, 6, 5, 10, 0));
        customerMark.addBoostOrderBiDir(order2);

        BoosterAccount booster1 = new BoosterAccount("barna", "barna@elite.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        booster1.addBoostOrderBiDir(order2);

        // BEGIN TRANSACTION
        em.getTransaction().begin();

        // PERSIST ENTITIES
        em.persist(customerMark);
        em.persist(customerAttila);
        em.persist(booster1);

        // END TRANSACTION AND CLOSE ENTITY MANAGER
        em.getTransaction().commit();
        em.close();
    }

    private static Date getDate(int y, int m, int d, int h, int min) {
        Calendar cal = Calendar.getInstance();
        cal.set(y, m, d, h, min);
        return cal.getTime();
    }

}
