package application.utils;

import spark.Request;

public class RequestUtil {

    public Long getSessionAccountId(Request request) {
        return request.session().attribute("account_id");
    }

}
