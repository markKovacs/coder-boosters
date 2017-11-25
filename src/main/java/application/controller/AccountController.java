package application.controller;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.service.AccountService;
import application.utils.Path;
import application.utils.RequestUtil;
import application.utils.ViewUtil;
import spark.Route;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccountController {

    private ViewUtil viewUtil;
    private RequestUtil requestUtil;
    private AccountService accountService;

    public AccountController(AccountService accountService, ViewUtil viewUtil, RequestUtil requestUtil) {
        this.accountService = accountService;
        this.viewUtil = viewUtil;
        this.requestUtil = requestUtil;
    }

    public Route serveRegistrationPage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountService.findAccountById(accountId);

        Map<String, Object> model = new HashMap<>();
        model.put("userData", new HashMap<>());

        return viewUtil.render(request, model, Path.Template.REGISTER, account);
    };

    public Route serveLoginPage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountService.findAccountById(accountId);

        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.LOGIN, account);
    };

    public Route serveCustomerProfilePage = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        boolean isProfileEdited = requestUtil.isProfileEdited(request);

        CustomerAccount account = accountService.findCustomerById(accountId);
        List<String> successMessage = accountService.getSuccessMessageOnEdit(isProfileEdited);

        Map<String, Object> model = new HashMap<>();
        model.put("userData", account);
        model.put("success", successMessage);

        return viewUtil.render(request, model, Path.Template.CUSTOMER_PROFILE, account);
    };

    public Route handleRegistration = (request, response) -> {

        Map<String, String> inputData = requestUtil.collectRegistrationData(request);
        List<String> errorMessages = accountService.validateRegistrationInput(inputData);

        Map<String, Object> model;

        // IN CASE OF INVALID INPUT, RE-RENDER REGISTRATION PAGE
        if (errorMessages.size() > 0) {
            model = new HashMap<>();
            model.put("errors", errorMessages);
            model.put("userData", inputData);

            return viewUtil.render(request, model, Path.Template.REGISTER, null);
        }

        // CREATE HASHED PASSWORD AND HANDLE IF ERROR OCCURRED
        String passwordHash = accountService.createHashedPassword(inputData.get("password1"));
        if (passwordHash == null) {
            model = new HashMap<>();
            model.put("errors", accountService.getHashingErrorMessage());
            model.put("userData", inputData);

            return viewUtil.render(request, model, Path.Template.REGISTER, null);
        }

        // SAVE ACCOUNT TO DATABASE
        Account account = accountService.saveAccount(inputData, passwordHash);

        // SEND WELCOME EMAIL
        // TODO: once SMTP properly set, this can be used
        // accountService.sendWelcomeEmail(account);

        response.redirect(Path.Web.LOGIN);
        return null;
    };

    public Route handleLogin = (request, response) -> {

        Map<String, String> inputData = requestUtil.collectLoginData(request);
        Long accountId = accountService.validateLoginCredentials(inputData);

        // INVALID LOGIN CREDENTIALS
        if (accountId == -1) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", accountService.getInvalidLoginCredsErrorMessage());

            return viewUtil.render(request, model, Path.Template.LOGIN, null);
        }

        // SUCCESSFUL LOGIN - ADD TO SESSION AND REDIRECT ACCORDINGLY
        requestUtil.createSessionForAccount(request, accountId);
        Account account = accountService.findAccountById(accountId);

        // TODO: change from instanceof and use an accountType instance variable
        if (account instanceof BoosterAccount) {
            response.redirect(Path.Web.BOOSTER_ORDERS);
        } else {
            response.redirect(Path.Web.CUSTOMER_ORDERS);
        }
        return null;
    };

    public Route handleLogout = (request, response) -> {

        requestUtil.removeAccountFromSession(request);
        response.redirect(Path.Web.INDEX);

        return null;
    };

    public Route handleCustomerProfileEditing = (request, response) -> {

        // TODO: not implemented yet, for later use

        Long accountId = requestUtil.getSessionAccountId(request);
        Map<String, String> inputData = requestUtil.collectEditData(request);

        List<String> errorMessages = accountService.validateCustomerProfileEditInfo(inputData);
        Account account = accountService.findAccountById(accountId);

        // INVALID INPUT
        if (errorMessages.size() > 0) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", errorMessages);
            model.put("userData", inputData);

            return viewUtil.render(request, model, Path.Template.CUSTOMER_PROFILE, account);
        }

        accountService.update(accountId, inputData);

        response.redirect(Path.Web.CUSTOMER_PROFILE_EDIT_SUCCESS);
        return null;
    };

    public Route serveCustomerPayPal = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        Account account = accountService.findAccountById(accountId);

        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.CUSTOMER_PAYPAL, account);
    };

    public Route handleCustomerPayPal = (request, response) -> {

        Long accountId = requestUtil.getSessionAccountId(request);
        int amount = requestUtil.getQueryParamAmount(request);

        CustomerAccount customerAccount = accountService.findCustomerById(accountId);
        accountService.increaseBoostCoinAmount(customerAccount, amount);

        response.redirect(Path.Web.CUSTOMER_PROFILE);
        return null;
    };

}
