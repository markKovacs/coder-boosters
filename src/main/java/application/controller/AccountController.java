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
import org.springframework.web.bind.annotation.GetMapping;
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

    @GetMapping(value = Path.Web.REGISTER)
    public String serveRegistrationPage(Model model){
        model.addAttribute("userData", requestUtil.collectRegistrationData(new HashMap<>()));

        return Path.Template.REGISTER;
    }

    @GetMapping(value = Path.Web.LOGIN)
    public String serveLoginPage(){

        return Path.Template.LOGIN;
    }

    @GetMapping(value = Path.Web.CUSTOMER_PROFILE)
    public String serveCustomerProfilePage(Model model, @RequestParam(name = "edited", required = false) String edited){

        Account account = sessionData.getAccount();
        boolean isProfileEdited = requestUtil.isProfileEdited(edited);

        List<String> successMessage = accountService.getSuccessMessageOnEdit(isProfileEdited);

        // TODO account datas need to be cleared
        model.addAttribute("userData", account);
        model.addAttribute("success", successMessage);

        return Path.Template.CUSTOMER_PROFILE;
    }

    @PostMapping(value = Path.Web.REGISTER)
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

        return "redirect:" + Path.Web.LOGIN;
    }

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
    }

    @PostMapping(Path.Web.CUSTOMER_PROFILE)
    public String handleCustomerProfileEditing(@RequestParam Map<String, String> form, Model model) {

        // TODO: not implemented yet, for later use

        Map<String, String> inputData = requestUtil.collectEditData(form);

        List<String> errorMessages = accountService.validateCustomerProfileEditInfo(inputData);
        Account account = sessionData.getAccount();

        // INVALID INPUT
        if (errorMessages.size() > 0) {
            model.addAttribute("errors", errorMessages);
            model.addAttribute("userData", inputData);

            return Path.Template.CUSTOMER_PROFILE;
        }

        accountService.update(account.getId(), inputData);
        return "redirect:" + Path.Web.CUSTOMER_PROFILE_EDIT_SUCCESS;
    }

    @GetMapping(Path.Web.CUSTOMER_PAYPAL)
    public String serveCustomerPayPal() {

        Account account = sessionData.getAccount();

        return Path.Template.CUSTOMER_PAYPAL;
    }

    @PostMapping(Path.Web.CUSTOMER_PAYPAL)
    public String handleCustomerPayPal(@RequestParam Map<String, String> form) {

        Account customerAccount = sessionData.getAccount();
        int amount = requestUtil.getQueryParamAmount(form);
        accountService.increaseBoostCoinAmount(customerAccount, amount);

        return "redirect:" + Path.Web.CUSTOMER_PROFILE;
    }

}
