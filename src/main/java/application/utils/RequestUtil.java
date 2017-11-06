package application.utils;

import spark.Request;

public class RequestUtil {

    public static String getSessionCurrentUser(Request request) {
        return request.session().attribute("currentUser");
    }

}
