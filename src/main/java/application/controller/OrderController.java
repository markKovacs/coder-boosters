package application.controller;

import application.dao.AccountDao;
import application.dao.BoostOrderDao;
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
    private AccountDao accountDao;
    private BoostOrderDao boostOrderDao;
    private ViewUtil viewUtil;
    private RequestUtil requestUtil;
    private DataUtil dataUtil;

    public OrderController(AccountDao accountDao, BoostOrderDao boostOrderDao, ViewUtil viewUtil, RequestUtil requestUtil, DataUtil dataUtil) {
        this.accountDao = accountDao;
        this.boostOrderDao = boostOrderDao;
        this.viewUtil = viewUtil;
        this.requestUtil = requestUtil;
        this.dataUtil = dataUtil;
    }

    public Route serveOrderListPage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountDao.findAccountById(accountId);

        Map<String, Object> model = new HashMap<>();

        if (account instanceof BoosterAccount) {
            // TODO: orders need to be added to model differently: where booster_id is null or current booster's id
            model.put("orders", new ArrayList<BoostOrder>());
            return viewUtil.render(request, model, Path.Template.BOOSTER_ORDERS, account);
        }
        model.put("orders", boostOrderDao.getOrdersByAccount(account));
        return viewUtil.render(request, model, Path.Template.CUSTOMER_ORDERS, account);
    };

    public Route handleAcceptOrder = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        BoosterAccount boosterAccount = accountDao.findBoosterById(accountId);

        if (boosterAccount == null) {
            response.redirect(Path.Web.INDEX);
            halt(401);
        }

        Long boostOrderId = Long.parseLong(request.params("boostOrderId"));
        BoostOrder boostOrder = boostOrderDao.findBoostOrder(boostOrderId);
        boostOrderDao.addBoostOrder(boosterAccount, boostOrder);

        // TODO: success message could be added.

        response.redirect(Path.Web.CUSTOMER_ORDERS);
        return null;
    };

    public Route handleOrderCreation = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        CustomerAccount account = accountDao.findCustomerById(accountId);

        List<String> errorMessages = validateOrderData(request);

        if (errorMessages.size() > 0) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", errorMessages);

            return viewUtil.render(request, model, Path.Template.ORDER_FORM, account);
        }

        BoostOrder boostOrder = null;
        switch (request.queryParams("gameType")) {
            case "LOL":
                boostOrder = new LoLBoostOrder(
                        LeagueDivision.valueOf(request.queryParams("currentRank")),
                        Integer.parseInt(request.queryParams("numberOfGames")),
                        OrderType.valueOf(request.queryParams("orderType")),
                        Double.parseDouble(request.queryParams("bonusPercentage")),
                        dataUtil.createDate(
                                Integer.parseInt(request.queryParams("year")),
                                Integer.parseInt(request.queryParams("month")),
                                Integer.parseInt(request.queryParams("day")),
                                Integer.parseInt(request.queryParams("hour"))
                        )
                );
                break;
        }

        // TODO: GameAccount object to be created and persisted here, added to BoostOrder.
        boostOrderDao.addBoostOrder(account, boostOrder);
        // TODO: unifiy USD - BoostCoin and int - double
        accountDao.changeBoostCoinByAmount(account, (-1) * (int) boostOrder.getTotalPrice());

        response.redirect(Path.Web.CUSTOMER_ORDERS);
        return null;
    };

    public Route serveCustomerOrders = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountDao.findAccountById(accountId);
        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.CUSTOMER_ORDERS, account);
    };

    public Route serveBoosterOrders = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountDao.findAccountById(accountId);
        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.BOOSTER_ORDERS, account);
    };

    public Route serveSelectGamePage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountDao.findAccountById(accountId);
        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.SELECT_GAME, account);
    };

    public Route serveOrderForm = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountDao.findAccountById(accountId);

        String gameTypeString = request.queryParams("game_type");
        List<LeagueDivision> leagueDivisions = Arrays.asList(LeagueDivision.values());

        Map<String, Object> model = new HashMap<>();
        model.put("game_type", gameTypeString);
        model.put("league_divisions", leagueDivisions);

        return viewUtil.render(request, model, Path.Template.ORDER_FORM, account);
    };

    private List<String> validateOrderData(Request request) {
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
