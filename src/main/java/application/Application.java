package application;

import application.controller.AccountController;
import application.controller.IndexController;
import application.controller.OrderController;
import application.utils.DataGenerator;
import application.utils.Path;

import javax.persistence.Persistence;

import static spark.Spark.*;
import static spark.debug.DebugScreen.enableDebugScreen;

public class Application {

    private AccountController accountController;
    private IndexController indexController;
    private OrderController orderController;
    private DataGenerator dataGenerator;

    public Application(AccountController accountController, IndexController indexController,
                       OrderController orderController, DataGenerator dataGenerator) {

        this.accountController = accountController;
        this.indexController = indexController;
        this.orderController = orderController;
        this.dataGenerator = dataGenerator;
    }

    public void start() {

        // INIT ENTITY MANAGER FACTORY
        App.EMFactory = Persistence.createEntityManagerFactory("jpaTestingPU");

        // INIT TEST DATA
        dataGenerator.initTestData();

        // TEST MODIFICATIONS
        dataGenerator.modifyTestData();

        // SERVER SETTINGS
        exception(Exception.class, (e, req, res) -> e.printStackTrace());
        staticFileLocation("/public");
        port(8888);

        // ENABLE DEBUG SCREEN
        if (Config.isDevEnv) enableDebugScreen();

        // ROUTING ENDPOINTS
        get(Path.Web.INDEX, indexController.serveIndexPage);
        get(Path.Web.LOGIN, accountController.serveLoginPage);
        get(Path.Web.REGISTER, accountController.serveRegistrationPage);

        post(Path.Web.LOGIN, accountController.handleLogin);
        get(Path.Web.LOGOUT, accountController.handleLogout);
        post(Path.Web.REGISTER, accountController.handleRegistration);

        get(Path.Web.BOOSTER_ORDERS, orderController.serveOrderListPage);
        get(Path.Web.CUSTOMER_ORDERS, orderController.serveOrderListPage);

        get(Path.Web.CUSTOMER_PROFILE, accountController.serveCustomerProfilePage);
        //post(Path.Web.CUSTOMER_PROFILE, accountController.handleCustomerProfileEditing);

        get(Path.Web.SELECT_GAME, orderController.serveSelectGamePage);
        get(Path.Web.ORDER_FORM, orderController.serveOrderForm);

        post(Path.Web.CREATE_ORDER, orderController.handleOrderCreation);

        get(Path.Web.CUSTOMER_PAYPAL, accountController.serveCustomerPayPal);
        post(Path.Web.CUSTOMER_PAYPAL, accountController.handleCustomerPayPal);

    }
}
