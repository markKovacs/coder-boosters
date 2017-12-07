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

    public boolean isProfileEdited(String edited) {
        return edited != null;
    }

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

}
