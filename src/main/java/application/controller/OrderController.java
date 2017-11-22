package application.controller;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.order.BoostOrder;
import application.model.order.LeagueDivision;
import application.service.AccountService;
import application.service.OrderService;
import application.utils.Path;
import application.utils.RequestUtil;
import application.utils.ViewUtil;
import spark.Route;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderController {

    private OrderService orderService;
    private AccountService accountService;
    private ViewUtil viewUtil;
    private RequestUtil requestUtil;

    public OrderController(OrderService orderService, AccountService accountService,
                           ViewUtil viewUtil, RequestUtil requestUtil) {

        this.orderService = orderService;
        this.accountService = accountService;
        this.viewUtil = viewUtil;
        this.requestUtil = requestUtil;
    }

    public Route serveOrderListPage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountService.findAccountById(accountId);

        Map<String, Object> model = new HashMap<>();

        if (account instanceof BoosterAccount) {
            model.put("orders", orderService.getOrdersForBoosterAndAllAvailable(account));
            return viewUtil.render(request, model, Path.Template.BOOSTER_ORDERS, account);
        }

        model.put("orders", orderService.getOrdersByAccount(account));
        return viewUtil.render(request, model, Path.Template.CUSTOMER_ORDERS, account);
    };

    public Route handleAcceptOrder = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Long boostOrderId = requestUtil.getQueryParamBoostOrderId(request);

        BoosterAccount boosterAccount = accountService.findBoosterById(accountId);
        BoostOrder boostOrder = orderService.findBoostOrder(boostOrderId);

        boolean successful = orderService.acceptOrder(boosterAccount, boostOrder);

        // TODO: message could be added (successful or not)

        response.redirect(Path.Web.CUSTOMER_ORDERS);
        return null;
    };

    public Route handleOrderCreation = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Map<String, String> inputData = requestUtil.collectNewOrderData(request);

        CustomerAccount account = accountService.findCustomerById(accountId);
        List<String> errorMessages = orderService.validateOrderData(inputData);

        // INVALID INPUT
        if (errorMessages.size() > 0) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", errorMessages);

            return viewUtil.render(request, model, Path.Template.ORDER_FORM, account);
        }

        // SUCCESSFUL ORDER CREATION
        // TODO: first we should check if sufficient funds on customer account balance, then deduct, then create order
        // TODO: GameAccount object to be created and persisted here, added to BoostOrder.
        BoostOrder boostOrder = orderService.createOrder(account, inputData);
        if (boostOrder == null) {
            response.redirect(Path.Web.CUSTOMER_ORDERS);
            return null;
        }
        // TODO: unify USD - BoostCoin and int - double
        boolean paid = accountService.decreaseBoostCoinAmount(account, (-1) * (int) boostOrder.getTotalPrice());

        response.redirect(Path.Web.CUSTOMER_ORDERS);
        return null;
    };

    public Route serveSelectGamePage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountService.findAccountById(accountId);
        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.SELECT_GAME, account);
    };

    public Route serveOrderForm = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        String gameTypeString = requestUtil.getQueryParamGameType(request);

        Account account = accountService.findAccountById(accountId);
        List<LeagueDivision> leagueDivisions = orderService.getLoLLeagueDivisions();

        Map<String, Object> model = new HashMap<>();
        model.put("game_type", gameTypeString);
        model.put("league_divisions", leagueDivisions);

        return viewUtil.render(request, model, Path.Template.ORDER_FORM, account);
    };

}
