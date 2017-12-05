package application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootCöderBoostersApplication is an annotation that sets up a Spring boot application. It does lots of
// things like adds all Beans to the context, sets up the routing internally etc.
@SpringBootApplication
public class SpringBootCoderBoostersApplication {

	public static void main(String[] args) {
	    // This launches the application. After executing this command, your app will listen to
        // requests on the configured port (8080) and execute the code that is configured for
        // its route: "/simple" and "/greeting" if a request comes in.
        // Later it could do other things too, like execute a function every X seconds.
		SpringApplication.run(SpringBootCoderBoostersApplication.class, args);

    }
}
