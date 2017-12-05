package application.utils;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import java.util.HashMap;
import java.util.InputMismatchException;
import java.util.Map;

@Component
public class RequestUtil {

//    public Long getSessionAccountId(Request request) {
//        return request.session().attribute("account_id");
//    }

//    public boolean isProfileEdited(Request request) {
//        return request.queryParams("edited") != null;
//    }

    public void addCommonAttributes(Model model, Account account) {
        String accountType = null;
        if (account instanceof CustomerAccount) {
            accountType = "customer";
        } else if (account instanceof BoosterAccount) {
            accountType = "booster";
        }

        model.addAttribute("currentUser", account != null ? account.getAccountName() : null);
        model.addAttribute("loggedInAs", accountType);
        model.addAttribute("balance", account != null ? account.getBoostCoin() : 0);
    }

    public Map<String, String> collectRegistrationData(Map<String, String> form) {
        Map<String, String> registrationData = new HashMap<>();
        registrationData.put("username", form.get("username"));
        registrationData.put("email", form.get("email"));
        registrationData.put("password1", form.get("password1"));
        registrationData.put("password2", form.get("password2"));
        registrationData.put("usertype", form.get("usertype"));

        return registrationData;
    }

    public Map<String, String> collectLoginData(Map<String, String> form) {
        Map<String, String> loginData = new HashMap<>();
        loginData.put("username", form.get("username"));
        loginData.put("password", form.get("password"));

        return loginData;
    }
    //        request.session().attribute("account_id", accountId);
//    public void createSessionForAccount(Request request, Long accountId) {

//    }
    //        request.session().removeAttribute("account_id");
//    public void removeAccountFromSession(Request request) {

//    }

    public Map<String, String> collectEditData(Map<String, String> form) {
        // TODO: not ready yet
        Map<String, String> profileInfo = new HashMap<>();
        profileInfo.put("phone", form.get("phone"));
        profileInfo.put("billcountry", form.get("bill-country"));
        profileInfo.put("billcity", form.get("bill-city"));
        profileInfo.put("billzip", form.get("bill-zip"));
        profileInfo.put("billaddress", form.get("bill-address"));
        profileInfo.put("shipcountry", form.get("ship-country"));
        profileInfo.put("shipcity", form.get("ship-city"));
        profileInfo.put("shipzip", form.get("ship-zip"));
        profileInfo.put("shipaddress", form.get("ship-address"));
        return profileInfo;
    }

    public int getQueryParamAmount(Map<String, String> form) {
        try {
            return Integer.parseInt(form.get("amount"));
        } catch (InputMismatchException e) {
            return -1;
        }
    }

    public Long getQueryParamBoostOrderId(Map<String, String> form) {
        try {
            return Long.parseLong(form.get("boostOrderId"));
        } catch (InputMismatchException e) {
            return -1L;
        }
    }

    public Map<String, String> collectNewOrderData(Map<String, String> form) {

        Map<String, String> orderData = new HashMap<>();

        orderData.put("gameType", form.get("gameType"));
        orderData.put("currentRank", form.get("currentRank"));
        orderData.put("numberOfGames", form.get("numberOfGames"));
        orderData.put("orderType", form.get("orderType"));
        orderData.put("bonusPercentage", form.get("bonusPercentage"));
        orderData.put("year", form.get("year"));
        orderData.put("month", form.get("month"));
        orderData.put("year", form.get("year"));
        orderData.put("day", form.get("day"));
        orderData.put("hour", form.get("hour"));
        orderData.put("gameAccName", form.get("gameAccName"));
        orderData.put("gameAccPassword", form.get("gameAccPassword"));

        return orderData;
    }

    public String getQueryParamGameType(Map<String, String> form) {
        return form.get("game_type");
    }
}
