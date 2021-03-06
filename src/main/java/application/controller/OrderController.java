package application.controller;

import application.model.account.Account;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.service.AccountService;
import application.service.GameAccountService;
import application.service.OrderService;
import application.utils.Path;
import application.utils.RequestUtil;
import application.utils.SessionData;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
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
        if (account != null) {
            sessionData.setAccount(accountService.refresh(account));
        }

        requestUtil.addCommonAttributes(model, account);
    }

    @GetMapping({Path.Web.CUSTOMER_ORDERS, Path.Web.BOOSTER_ORDERS})
    public String serveOrderListPage(Model model) {
        Account account = sessionData.getAccount();

        if (account instanceof CustomerAccount) {
            model.addAttribute("orders", orderService.getOrdersByAccount(account));
            return Path.Template.CUSTOMER_ORDERS;
        }

        model.addAttribute("orders", orderService.getOrdersForBoosterAndAllAvailable(account));
        return Path.Template.BOOSTER_ORDERS;
    }

    @PostMapping(Path.Web.ACCEPT_ORDER)
    public String handleTakeOrder(@RequestParam Map<String, String> form) {

        Long boostOrderId = requestUtil.getQueryParamBoostOrderId(form);
        Account account = sessionData.getAccount();

        BoostOrder boostOrder = orderService.findBoostOrder(boostOrderId);

        boolean successful = orderService.takeOrder(account, boostOrder);

        // TODO: add success/error message to model and modify HTML

        return "redirect:" + Path.Web.BOOSTER_ORDERS;
    }

    @PostMapping(Path.Web.CLOSE_ORDER)
    public String handleCloseOrder(@RequestParam Map<String, String> form) {

        Account account = sessionData.getAccount();
        Long boostOrderId = requestUtil.getQueryParamBoostOrderId(form);

        BoostOrder boostOrder = orderService.findBoostOrder(boostOrderId);

        boolean successful = orderService.closeOrder(boostOrder);

        // TODO: add success/error message to model and modify HTML

        accountService.transferBoostCoin(account, boostOrder.getTotalPrice());

        return "redirect:" + Path.Web.BOOSTER_ORDERS;
    }

    @PostMapping(Path.Web.CREATE_ORDER)
    public String handleOrderCreation(Model model, @RequestParam Map<String, String> form) {

        Account account = sessionData.getAccount();
        List<String> errorMessages = orderService.validateOrderData(form);

        // INVALID INPUT
        if (errorMessages.size() > 0) {
            model.addAttribute("errors", errorMessages);
            requestUtil.addAttributesToOrderForm(model, form, this);

            return Path.Template.ORDER_FORM;
        }

        // SUCCESSFUL ORDER CREATION
        // TODO: check for sufficient funds before deducting or handle via DB constraint
        BoostOrder boostOrder = orderService.createOrder(account, form);
        if (boostOrder == null) {
            return "redirect:" + Path.Web.CUSTOMER_ORDERS;
        }

        GameAccount gameAccount = gameAccountService.create(form, account);
        orderService.setGameAccount(boostOrder, gameAccount);

        boolean paid = accountService.decreaseBoostCoinAmount(account, boostOrder.getTotalPrice());

        // TODO: add success/error message to model and modify HTML

        return "redirect:" + Path.Web.CUSTOMER_ORDERS;
    }

    @GetMapping(Path.Web.SELECT_GAME)
    public String serveSelectGamePage() {

        return Path.Template.SELECT_GAME;
    }

    @GetMapping(Path.Web.ORDER_FORM)
    public String serveOrderForm(Model model, @RequestParam Map<String, String> form) {

        requestUtil.addAttributesToOrderForm(model, form, this);

        return Path.Template.ORDER_FORM;
    }

}
