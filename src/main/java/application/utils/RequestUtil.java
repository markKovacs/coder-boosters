package application.utils;

import application.controller.OrderController;
import application.model.GameType;
import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.order.csgo.CSGODivision;
import application.model.order.lol.LeagueDivision;
import application.model.order.ow.OWDivision;
import application.model.order.rocketleague.RocketLeague;
import application.model.order.wow.WoWArenaBracket;
import application.service.OrderService;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Map;

@Component
public class RequestUtil {

    private OrderService orderService;

    public RequestUtil(OrderService orderService) {
        this.orderService = orderService;
    }

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

    public void addAttributesToOrderForm(Model model, Map<String, String> form, OrderController orderController) {

        String gameTypeString = form.get("game_type");
        model.addAttribute("game_type", gameTypeString);

        switch (GameType.valueOf(gameTypeString)) {
            case LOL:
                List<LeagueDivision> leagueDivisions = orderService.getLoLLeagueDivisions();
                model.addAttribute("league_divisions", leagueDivisions);
                break;
            case WOW:
                List<WoWArenaBracket> woWArenaBrackets = orderService.getWoWArenaBrackets();
                model.addAttribute("wow_brackets", woWArenaBrackets);
                break;
            case OW:
                List<OWDivision> owDivisions = orderService.getOWDivisions();
                model.addAttribute("ow_divisions", owDivisions);
            case RL:
                List<RocketLeague> rocketLeagues = orderService.getRocketLeagueDivisions();
                model.addAttribute("rocket_league", rocketLeagues);
                break;
            case CSGO:
                List<CSGODivision> CSGOBoostOrders = orderService.getCSGOLeagueDivisions();
                model.addAttribute("csgo_divisions", CSGOBoostOrders);
                break;
        }
    }
}
