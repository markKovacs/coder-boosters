package application;

import javax.persistence.EntityManagerFactory;

public class App {

    // DECLARE ENTITY MANAGER FACTORY
    public static EntityManagerFactory EMFactory;

    public static void main(String[] args) {

        DIContainer di = new DIContainer();
        Application coderBoosters = di.init();
        coderBoosters.start();

    }

}
