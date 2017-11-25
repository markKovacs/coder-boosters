package application.utils;

import spark.Request;

import java.util.HashMap;
import java.util.InputMismatchException;
import java.util.Map;

public class RequestUtil {

    public Long getSessionAccountId(Request request) {
        return request.session().attribute("account_id");
    }

    public boolean isProfileEdited(Request request) {
        return request.queryParams("edited") != null;
    }

    public Map<String, String> collectRegistrationData(Request req) {
        Map<String, String> registrationData = new HashMap<>();
        registrationData.put("username", req.queryParams("username"));
        registrationData.put("email", req.queryParams("email"));
        registrationData.put("password1", req.queryParams("password1"));
        registrationData.put("password2", req.queryParams("password2"));
        registrationData.put("usertype", req.queryParams("usertype"));

        return registrationData;
    }

    public Map<String, String> collectLoginData(Request req) {
        Map<String, String> loginData = new HashMap<>();
        loginData.put("username", req.queryParams("username"));
        loginData.put("password", req.queryParams("password"));

        return loginData;
    }

    public void createSessionForAccount(Request request, Long accountId) {
        request.session().attribute("account_id", accountId);
    }

    public void removeAccountFromSession(Request request) {
        request.session().removeAttribute("account_id");
    }

    public Map<String, String> collectEditData(Request req) {
        // TODO: not ready yet
        Map<String, String> profileInfo = new HashMap<>();
        profileInfo.put("phone", req.queryParams("phone"));
        profileInfo.put("billcountry", req.queryParams("bill-country"));
        profileInfo.put("billcity", req.queryParams("bill-city"));
        profileInfo.put("billzip", req.queryParams("bill-zip"));
        profileInfo.put("billaddress", req.queryParams("bill-address"));
        profileInfo.put("shipcountry", req.queryParams("ship-country"));
        profileInfo.put("shipcity", req.queryParams("ship-city"));
        profileInfo.put("shipzip", req.queryParams("ship-zip"));
        profileInfo.put("shipaddress", req.queryParams("ship-address"));
        return profileInfo;
    }

    public int getQueryParamAmount(Request request) {
        try {
            return Integer.parseInt(request.queryParams("amount"));
        } catch (InputMismatchException e) {
            return -1;
        }
    }

    public Long getQueryParamBoostOrderId(Request request) {
        try {
            return Long.parseLong(request.queryParams("boostOrderId"));
        } catch (InputMismatchException e) {
            return -1L;
        }
    }

    public Map<String, String> collectNewOrderData(Request request) {

        Map<String, String> orderData = new HashMap<>();

        orderData.put("gameType", request.queryParams("gameType"));
        orderData.put("currentRank", request.queryParams("currentRank"));
        orderData.put("numberOfGames", request.queryParams("numberOfGames"));
        orderData.put("orderType", request.queryParams("orderType"));
        orderData.put("bonusPercentage", request.queryParams("bonusPercentage"));
        orderData.put("year", request.queryParams("year"));
        orderData.put("month", request.queryParams("month"));
        orderData.put("year", request.queryParams("year"));
        orderData.put("day", request.queryParams("day"));
        orderData.put("hour", request.queryParams("hour"));
        orderData.put("gameAccName", request.queryParams("gameAccName"));
        orderData.put("gameAccPassword", request.queryParams("gameAccPassword"));

        return orderData;
    }

    public String getQueryParamGameType(Request request) {
        return request.queryParams("game_type");
    }

}
