package application;

import application.controller.AccountController;
import application.controller.IndexController;
import application.controller.OrderController;

public class DIContainer {

    AccountController accountController;
    IndexController indexController;
    OrderController orderController;



    public DIContainer() {
    }

    Application init() {
        accountController = new AccountController();
        indexController = new IndexController();




        return new Application();
    }
}
