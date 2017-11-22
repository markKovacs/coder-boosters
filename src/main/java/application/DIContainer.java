package application;

import application.controller.AccountController;
import application.controller.IndexController;
import application.controller.OrderController;
import application.dao.*;
import application.service.AccountService;
import application.service.EmailService;
import application.service.OrderService;
import application.service.PasswordHashService;
import application.utils.*;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DIContainer {

    public Application init() {

        // INIT UTILS
        ViewUtil viewUtil = new ViewUtil();
        DataUtil dataUtil = new DataUtil();
        RequestUtil requestUtil = new RequestUtil();

        // INIT PERSISTENCE-RELATED OBJECTS
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("jpaTestingPU");
        AccountDao accountDaoJPA = new AccountDaoJPA(entityManagerFactory);
        OrderDao orderDaoJPA = new OrderDaoJPA(entityManagerFactory);
        GameAccountDao gameAccountDaoJPA = new GameAccountDaoJPA(entityManagerFactory);

        // INIT SERVICES
        PasswordHashService passwordHashService = new PasswordHashService();
        EmailService emailService = new EmailService();
        AccountService accountService = new AccountService(accountDaoJPA, passwordHashService, emailService);
        OrderService orderService = new OrderService(orderDaoJPA, dataUtil);

        // INIT CONTROLLERS
        IndexController indexController = new IndexController(viewUtil);
        AccountController accountController = new AccountController(accountService, viewUtil, requestUtil);
        OrderController orderController = new OrderController(orderService, accountService, viewUtil, requestUtil);

        // INIT DATA GENERATOR
        DataGenerator dataGenerator = new DataGenerator(accountDaoJPA, orderDaoJPA, gameAccountDaoJPA, dataUtil);

        return new Application(accountController, indexController, orderController, dataGenerator);
    }

}
