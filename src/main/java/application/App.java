package application;

public class App {

    public static void main(String[] args) {

        DIContainer di = new DIContainer();
        Application coderBoosters = di.init();
        coderBoosters.start();

    }

}
