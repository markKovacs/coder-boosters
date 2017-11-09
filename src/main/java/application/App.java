package application;

import application.controller.AccountController;
import application.controller.IndexController;
import application.controller.OrderController;
import application.model.*;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.LeagueDivision;
import application.model.order.LoLBoostOrder;
import application.model.order.OrderType;
import application.utils.DataUtil;
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
        DataUtil.initTestData();

        // TEST MODIFICATIONS
        DataUtil.modifyTestData();

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
        get(Path.Web.CHOOSE_GAME, OrderController.serveChooseGamePage);
        get(Path.Web.ORDER_FORM, OrderController.serveOrderForm);

        post(Path.Web.LOGIN, AccountController.handleLogin);
        post(Path.Web.LOGOUT, AccountController.handleLogout);
        post(Path.Web.REGISTER, AccountController.handleRegistration);
        post(Path.Web.CUSTOMER_PROFILE, AccountController.handleCustomerProfileEditing);

    }

}
