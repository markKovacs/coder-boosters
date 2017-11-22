package application;

import application.controller.AccountController;
import application.controller.IndexController;
import application.controller.OrderController;
import application.utils.DataUtil;
import application.utils.Path;
import javax.persistence.*;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class App {

    // DECLARE ENTITY MANAGER FACTORY
    public static EntityManagerFactory EMFactory;

    public static void main(String[] args) {

        /*DIContainer di = new DIContainer();
        MyApp app = di.init(); // has tons of new ..
        app.start(); // setup code, start Spark,..*/

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

        post(Path.Web.LOGIN, AccountController.handleLogin);
        get(Path.Web.LOGOUT, AccountController.handleLogout);
        post(Path.Web.REGISTER, AccountController.handleRegistration);

        get(Path.Web.BOOSTER_ORDERS, OrderController.serveOrderListPage);
        get(Path.Web.BOOSTER_DEMO, OrderController.serverOrderDemo);
        get(Path.Web.CUSTOMER_ORDERS, OrderController.serveOrderListPage);

        get(Path.Web.CUSTOMER_PROFILE, AccountController.serveCustomerProfilePage);
        //post(Path.Web.CUSTOMER_PROFILE, AccountController.handleCustomerProfileEditing);

        get(Path.Web.SELECT_GAME, OrderController.serveSelectGamePage);
        get(Path.Web.ORDER_FORM, OrderController.serveOrderForm);

        post(Path.Web.CREATE_ORDER, OrderController.handleOrderCreation);

        get(Path.Web.CUSTOMER_PAYPAL, AccountController.serveCustomerPayPal);
        post(Path.Web.CUSTOMER_PAYPAL, AccountController.handleCustomerPayPal);

    }

}
