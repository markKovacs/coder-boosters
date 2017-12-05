package application.controller;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.service.AccountService;
import application.utils.Path;
import application.utils.RequestUtil;
import application.utils.SessionData;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import spark.Route;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccountController {

    private SessionData sessionData;
    private RequestUtil requestUtil;
    private AccountService accountService;

    public AccountController(SessionData sessionData, RequestUtil requestUtil, AccountService accountService) {
        this.sessionData = sessionData;
        this.requestUtil = requestUtil;
        this.accountService = accountService;
    }

    @ModelAttribute
    public void addAttributes(Model model) {
        Account account = sessionData.getAccount();
        requestUtil.addCommonAttributes(model, account);
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


    @PostMapping(Path.Web.LOGIN)
    public String handleLogin(@RequestParam Map<String, String> form, Model model) {

        Map<String, String> inputData = requestUtil.collectLoginData(form);
        Account account = accountService.validateLoginCredentials(inputData);

        // INVALID LOGIN CREDENTIALS
        if (account == null) {
            model.addAttribute("errors", accountService.getInvalidLoginCredsErrorMessage());

            return Path.Template.LOGIN;
        }

        // SUCCESSFUL LOGIN - ADD TO SESSION AND REDIRECT ACCORDINGLY
        sessionData.setAccount(account);

        // TODO: change from instanceof and use an accountType instance variable
        if (account instanceof BoosterAccount) {
            return "redirect:" + Path.Web.BOOSTER_ORDERS;
        }
        return "redirect:" + Path.Web.CUSTOMER_ORDERS;
    }

    @GetMapping(Path.Web.LOGOUT)
    public String handleLogout() {

        sessionData.clear();
        return "redirect:" + Path.Web.INDEX;
    };


    @PostMapping(Path.Web.CUSTOMER_PROFILE)
    public String handleCustomerProfileEditing(@RequestParam Map<String, String> form, Model model) {

        // TODO: not implemented yet, for later use

        Map<String, String> inputData = requestUtil.collectEditData(form);

        List<String> errorMessages = accountService.validateCustomerProfileEditInfo(inputData);
        Account account = sessionData.getAccount();

        // INVALID INPUT
        if (errorMessages.size() > 0) {
//            Map<String, Object> model = new HashMap<>();
            model.addAttribute("errors", errorMessages);
            model.addAttribute("userData", inputData);

            return Path.Template.CUSTOMER_PROFILE;
        }

        accountService.update(account.getId(), inputData);

        return "redirect:" + Path.Web.CUSTOMER_PROFILE_EDIT_SUCCESS;
    };


    @GetMapping(Path.Web.CUSTOMER_PAYPAL)
    public String serveCustomerPayPal() {

        Account account = sessionData.getAccount();

//        Map<String, Object> model = new HashMap<>();

        return Path.Template.CUSTOMER_PAYPAL;
    };


    @PostMapping(Path.Web.CUSTOMER_PAYPAL)
    public String handleCustomerPayPal(@RequestParam Map<String, String> form) {

        Account customerAccount = sessionData.getAccount();
        int amount = requestUtil.getQueryParamAmount(form);
        accountService.increaseBoostCoinAmount(customerAccount, amount);

        return "redirect:" + Path.Web.CUSTOMER_PROFILE;
    }

}
