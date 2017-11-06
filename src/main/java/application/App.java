package application;

import application.controller.IndexController;
import application.model.*;
import application.utils.Path;
import javax.persistence.*;

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

    }

    private static void initTestData() {
        EntityManager em = EMFactory.createEntityManager();

        // CREATE TEST DATA ENTITIES
        Account account1 = new Account();

        // BEGIN TRANSACTION
        em.getTransaction().begin();

        // PERSIST ENTITIES
        em.persist(account1);

        // END TRANSACTION AND CLOSE ENTITY MANAGER
        em.getTransaction().commit();
        em.close();
    }

}
