package application.controller;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.LeagueDivision;
import application.service.AccountService;
import application.service.GameAccountService;
import application.service.OrderService;
import application.utils.Path;
import application.utils.RequestUtil;
import application.utils.SessionData;
import application.utils.ViewUtil;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import spark.Route;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderController {

    private SessionData sessionData;
    private OrderService orderService;
    private AccountService accountService;
    private GameAccountService gameAccountService;
    private RequestUtil requestUtil;

    public OrderController(OrderService orderService, AccountService accountService,
                           GameAccountService gameAccountService,
                           SessionData sessionData, RequestUtil requestUtil) {

        this.orderService = orderService;
        this.accountService = accountService;
        this.gameAccountService = gameAccountService;
        this.sessionData = sessionData;
        this.requestUtil = requestUtil;
    }

    @ModelAttribute
    public void addAttributes(Model model) {
        Account account = sessionData.getAccount();
        requestUtil.addCommonAttributes(model, account);
    }

    @GetMapping({Path.Web.BOOSTER_ORDERS, Path.Web.CUSTOMER_ORDERS})
    public String serveOrderListPage(Model model) {
        Account account = sessionData.getAccount();

        // TODO: start using accountType instead of instanceof
        if (account instanceof BoosterAccount) {
            model.addAttribute("orders", orderService.getOrdersForBoosterAndAllAvailable(account));
            return Path.Template.BOOSTER_ORDERS;
        }

        model.addAttribute("orders", orderService.getOrdersByAccount(account));
        return Path.Template.CUSTOMER_ORDERS;
    }

    public Route handleTakeOrder = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Long boostOrderId = requestUtil.getQueryParamBoostOrderId(request);

        BoosterAccount boosterAccount = accountService.findBoosterById(accountId);
        BoostOrder boostOrder = orderService.findBoostOrder(boostOrderId);

        boolean successful = orderService.takeOrder(boosterAccount, boostOrder);

        // TODO: message could be added (successful or not)

        response.redirect(Path.Web.BOOSTER_ORDERS);
        return null;
    };

    public Route handleCloseOrder = (request, response) -> {
        Long accountId = requestUtil.getSessionAccountId(request);
        Long boostOrderId = requestUtil.getQueryParamBoostOrderId(request);

        BoosterAccount boosterAccount = accountService.findBoosterById(accountId);
        BoostOrder boostOrder = orderService.findBoostOrder(boostOrderId);

        boolean successful = orderService.closeOrder(boosterAccount, boostOrder);

        // TODO: message could be added (successful or not)

        accountService.transferBoostCoin(boosterAccount, boostOrder.getTotalPrice());

        response.redirect(Path.Web.BOOSTER_ORDERS);
        return null;
    };

    public Route handleOrderCreation = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Map<String, String> inputData = requestUtil.collectNewOrderData(request);

        CustomerAccount customerAccount = accountService.findCustomerById(accountId);
        List<String> errorMessages = orderService.validateOrderData(inputData);

        // INVALID INPUT
        if (errorMessages.size() > 0) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", errorMessages);

            return viewUtil.render(request, model, Path.Template.ORDER_FORM, customerAccount);
        }

        // SUCCESSFUL ORDER CREATION
        // TODO: first we should check if sufficient funds on customer account balance, then deduct, then create order
        BoostOrder boostOrder = orderService.createOrder(customerAccount, inputData);
        if (boostOrder == null) {
            response.redirect(Path.Web.CUSTOMER_ORDERS);
            return null;
        }

        GameAccount gameAccount = gameAccountService.create(inputData, customerAccount);
        orderService.setGameAccount(boostOrder, gameAccount);

        boolean paid = accountService.decreaseBoostCoinAmount(customerAccount, boostOrder.getTotalPrice());

        response.redirect(Path.Web.CUSTOMER_ORDERS);
        return null;
    };

    public Route serveSelectGamePage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountService.findAccountById(accountId);
        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.SELECT_GAME, account);
    };

    @GetMapping(Path.Web.ORDER_FORM)
    public String serveOrderForm(Model model, @RequestParam Map<String, String> form) {

        String gameTypeString = requestUtil.getQueryParamGameType(form);
        List<LeagueDivision> leagueDivisions = orderService.getLoLLeagueDivisions();

        model.addAttribute("game_type", gameTypeString);
        model.addAttribute("league_divisions", leagueDivisions);

        return Path.Template.ORDER_FORM;
    }

}
