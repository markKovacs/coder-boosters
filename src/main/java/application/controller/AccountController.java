package application.controller;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.service.AccountService;
import application.utils.Path;
import application.utils.RequestUtil;
import application.utils.SessionData;
import org.springframework.stereotype.Controller;
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
        if (account != null) {
            sessionData.setAccount(accountService.refresh(account));
        }

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

        model.addAttribute("userData", account);
        model.addAttribute("success", successMessage);

        return Path.Template.CUSTOMER_PROFILE;
    }

    @PostMapping(value = Path.Web.REGISTER)
    public String handleRegistration(Model model, @RequestParam Map<String, String> formData){

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

        // SEND WELCOME EMAIL (CURRENTLY DISABLED DUE TO LACK OF SMTP server)
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
