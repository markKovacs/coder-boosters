package application.controller;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.service.AccountService;
import application.utils.Path;
import application.utils.RequestUtil;
import application.utils.SessionData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
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

    @GetMapping(value = "/register")
    public String serveRegistrationPage(){

        return Path.Template.REGISTER;
    };

    @GetMapping(value = "/login")
    public String serveLoginPage(){

        return Path.Template.LOGIN;
    };

    @GetMapping(value = "/customer-profile")
    public String serveCustomerProfilePage(Model model, @RequestParam String edited){

        Account account = sessionData.getAccount();
        boolean isProfileEdited = requestUtil.isProfileEdited(edited);


        List<String> successMessage = accountService.getSuccessMessageOnEdit(isProfileEdited);

        // TODO account datas need to be cleared
        model.addAttribute("userData", account);
        model.addAttribute("success", successMessage);

        return Path.Template.BOOSTER_PROFILE;
    };

    @PostMapping(value = "/register")
    public String handleRegistration(Model model, @RequestParam Map<String, String> formData){

        //Map<String, String> inputData = requestUtil.collectRegistrationData(request);
        List<String> errorMessages = accountService.validateRegistrationInput(formData);


        // IN CASE OF INVALID INPUT, RE-RENDER REGISTRATION PAGE
        if (errorMessages.size() > 0) {
            model.addAttribute("errors", errorMessages);
            model.addAttribute("userData", formData);

            return Path.Template.REGISTER;
        }

        // CREATE HASHED PASSWORD AND HANDLE IF ERROR OCCURRED
        String passwordHash = accountService.createHashedPassword(formData.get("password1"));
        if (passwordHash == null) {
            model.addAttribute("errors", accountService.getHashingErrorMessage());
            model.addAttribute("userData", formData);

            return Path.Template.REGISTER;
        }

        // SAVE ACCOUNT TO DATABASE
        Account account = accountService.saveAccount(formData, passwordHash);

        // SEND WELCOME EMAIL
        // TODO: once SMTP properly set, this can be used
        // accountService.sendWelcomeEmail(account);

        return "redirect:" + Path.Template.LOGIN;
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

    @PostMapping(Path.Web.CUSTOMER_PAYPAL)
    public String handleCustomerPayPal(@RequestParam Map<String, String> form) {

        Account customerAccount = sessionData.getAccount();
        int amount = requestUtil.getQueryParamAmount(form);
        accountService.increaseBoostCoinAmount(customerAccount, amount);

        return "redirect:" + Path.Web.CUSTOMER_PROFILE;
    }

}
