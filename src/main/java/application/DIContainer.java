package application;

import application.controller.AccountController;
import application.controller.IndexController;
import application.controller.OrderController;
import application.dao.*;
import application.utils.DataGenerator;
import application.utils.DataUtil;
import application.utils.RequestUtil;
import application.utils.ViewUtil;

public class DIContainer {

    public Application init() {
        ViewUtil viewUtil = new ViewUtil();
        DataUtil dataUtil = new DataUtil();
        RequestUtil requestUtil = new RequestUtil();
        AccountDao accountDaoJPA = new AccountDaoJPA();
        BoostOrderDao boostOrderDaoJPA = new BoostOrderDaoJPA();
        GameAccountDao gameAccountDaoJPA = new GameAccountDaoJPA();

        IndexController indexController = new IndexController(viewUtil);
        AccountController accountController = new AccountController(accountDaoJPA,viewUtil,requestUtil);
        DataGenerator dataGenerator = new DataGenerator(accountDaoJPA,boostOrderDaoJPA,gameAccountDaoJPA,dataUtil);
        OrderController orderController = new OrderController(accountDaoJPA, boostOrderDaoJPA,viewUtil,requestUtil,dataUtil);

        return new Application(accountController, indexController, orderController,dataGenerator);
    }

}
