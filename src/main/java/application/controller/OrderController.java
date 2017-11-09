package application.controller;

import application.dao.DaoFactory;
import application.model.GameType;
import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.order.BoostOrder;
import application.model.order.LeagueDivision;
import application.model.order.LoLBoostOrder;
import application.model.order.OrderType;
import application.utils.*;
import spark.Request;
import spark.Route;

import java.util.*;

import static spark.Spark.halt;

public class OrderController {

    public static Route serveOrderListPage = (request, response) -> {

        Long accountId = RequestUtil.getSessionAccountId(request);
        Account account = DaoFactory.getAccountDao().findAccountById(accountId);

        Map<String, Object> model = new HashMap<>();
        model.put("orders", DaoFactory.getBoostOrderDao().getOrdersByAccount(account));
        model.put("gameTypes", Arrays.asList(GameType.values()));

        // TODO: Path.Template.CUSTOMER_ORDERS & BOOSTER_ORDERS could be merged and th:if...
        if (account instanceof BoosterAccount) {
            return ViewUtil.render(request, model, Path.Template.BOOSTER_ORDERS);
        }
        return ViewUtil.render(request, model, Path.Template.CUSTOMER_ORDERS);
    };

    public static Route handleAcceptOrder = (request, response) -> {

        Long accountId = RequestUtil.getSessionAccountId(request);
        BoosterAccount boosterAccount = DaoFactory.getAccountDao().findBoosterById(accountId);

        if (boosterAccount == null) {
            response.redirect(Path.Web.INDEX);
            halt(401);
        }

        Long boostOrderId = Long.parseLong(request.params("boostOrderId"));
        BoostOrder boostOrder = DaoFactory.getBoostOrderDao().findBoostOrder(boostOrderId);
        DaoFactory.getBoostOrderDao().addBoostOrder(boosterAccount, boostOrder);

        // TODO: success message could be added.

        response.redirect(Path.Web.CUSTOMER_ORDERS);
        return null;
    };

    public static Route handleOrderCreation = (request, response) -> {

        Long accountId = RequestUtil.getSessionAccountId(request);
        CustomerAccount account = DaoFactory.getAccountDao().findCustomerById(accountId);

        List<String> errorMessages = validateOrderData(request);

        if (errorMessages.size() > 0) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", errorMessages);

            return ViewUtil.render(request, model, Path.Template.ORDER_FORM);
        }

        BoostOrder boostOrder = null;
        switch (request.queryParams("gameType")) {
            case "LOL":
                boostOrder = new LoLBoostOrder(
                        LeagueDivision.valueOf(request.queryParams("currentRank")),
                        Integer.parseInt(request.queryParams("numberOfGames")),
                        OrderType.valueOf(request.queryParams("orderType")),
                        Double.parseDouble(request.queryParams("bonusPercentage")),
                        DataUtil.createDate(
                                Integer.parseInt(request.queryParams("year")),
                                Integer.parseInt(request.queryParams("month")),
                                Integer.parseInt(request.queryParams("day")),
                                Integer.parseInt(request.queryParams("hour"))
                        )
                );
                break;
        }

        // TODO: GameAccount object to be created and persisted here, added to BoostOrder.
        DaoFactory.getBoostOrderDao().addBoostOrder(account, boostOrder);
        // TODO: unifiy USD - BoostCoin and int - double
        DaoFactory.getAccountDao().changeBoostCoinByAmount(account, (-1) * (int) boostOrder.getTotalPrice());

        response.redirect(Path.Web.CUSTOMER_ORDERS);
        return null;
    };

    public static Route serveCustomerOrders = (request, response) -> {

        Map<String, Object> model = new HashMap<>();

        return ViewUtil.render(request, model, Path.Template.CUSTOMER_ORDERS);
    };

    public static Route serveBoosterOrders = (request, response) -> {

        Map<String, Object> model = new HashMap<>();

        return ViewUtil.render(request, model, Path.Template.BOOSTER_ORDERS);
    };

    public static Route serveSelectGamePage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();

        return ViewUtil.render(request, model, Path.Template.SELECT_GAME);
    };
  
    public static Route serveOrderForm = (request, response) -> {

        String gameTypeString = request.queryParams("game_type");
        List<LeagueDivision> leagueDivisions = Arrays.asList(LeagueDivision.values());

        Map<String, Object> model = new HashMap<>();
        model.put("game_type", gameTypeString);
        model.put("league_divisions", leagueDivisions);

        return ViewUtil.render(request, model, Path.Template.ORDER_FORM);
    };
    
    private static List<String> validateOrderData(Request request) {
        List<String> errors = new ArrayList<>();

        switch (request.queryParams("gameType")) {

            case "LOL":
                if (!Arrays.asList(LeagueDivision.values())
                        .contains(LeagueDivision.valueOf(request.queryParams("currentRank")))) {
                    errors.add("Selected league/division rank is invalid.");
                }
                int numOfGames = Integer.parseInt(request.queryParams("numberOfGames"));
                if (numOfGames < 1 || numOfGames > 10) {
                    errors.add("Number of games selected should be between 1-10.");
                }
                if (!Arrays.asList(OrderType.values())
                        .contains(OrderType.valueOf(request.queryParams("orderType")))) {
                    errors.add("Selected order type is invalid.");
                }
                double bonusPercentage = Double.parseDouble(request.queryParams("bonusPercentage"));
                if (bonusPercentage != 0.0 && bonusPercentage != 5.0 &&
                        bonusPercentage != 10.0 && bonusPercentage != 15.0) {
                    errors.add("Bonus percentage must be 0, 5, 10 or 15");
                }
                int year = Integer.parseInt(request.queryParams("year"));
                if (year > 2099 || year < 2017) {
                    errors.add("Year must be between 2017 and 2099");
                }
                int month = Integer.parseInt(request.queryParams("month"));
                if (month < 1 || month > 12) {
                    errors.add("Months must be between 1 and 12");
                }
                int day = Integer.parseInt(request.queryParams("month"));
                if (day < 1 || day > 31) {
                    errors.add("Days must be between 1 and 31");
                }
                int hour = Integer.parseInt(request.queryParams("hour"));
                if (hour < 0 || hour > 24) {
                    errors.add("Hours must be between 0 and 24");
                }
                if (!InputField.USERNAME.validate(request.queryParams("gameAccName"))) {
                    errors.add("Game account name is invalid.");
                }
                if (!InputField.PASSWORD.validate(request.queryParams("gameAccPassword"))) {
                    errors.add("Game account password is invalid.");
                }
                break;

            default:
                errors.add("Wrong game type.");
        }

        return errors;
    }

}
