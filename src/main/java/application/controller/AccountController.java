package application.controller;

import application.dao.DaoFactory;
import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.utils.*;
import spark.Request;
import spark.Route;
import java.util.*;

public class AccountController {

    public static Route serveRegistrationPage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();
        // required object for register.html:
        model.put("userData", new HashMap<>());

        return ViewUtil.render(request, model, Path.Template.REGISTER);
    };

    public static Route serveLoginPage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();

        return ViewUtil.render(request, model, Path.Template.LOGIN);
    };

    public static Route serveCustomerProfilePage = (request, response) -> {

        Long accountId = RequestUtil.getSessionAccountId(request);
        CustomerAccount account = DaoFactory.getAccountDao().findCustomerById(accountId);

        Map<String, Object> model = new HashMap<>();
        model.put("userData", account);

        if (request.queryParams("edited") != null) {
            model.put("success", new ArrayList<>(Collections.singletonList("Profile successfully edited.")));
        }

        return ViewUtil.render(request, model, Path.Template.CUSTOMER_PROFILE);
    };


    public static Route handleRegistration = (request, response) -> {

        Map<String, String> inputData = collectRegistrationData(request);
        List<String> errorMessages = validateRegistrationInput(inputData);
        Map<String, Object> model;

        // IN CASE OF INVALID INPUT, RE-RENDER REGISTRATION PAGE
        if (errorMessages.size() > 0) {
            model = new HashMap<>();
            model.put("errors", errorMessages);
            model.put("userData", inputData);

            return ViewUtil.render(request, model, Path.Template.REGISTER);
        }

        // CREATE HASHED PASSWORD
        String hashedPasswordAndSalt = PasswordStorage.createHashedPassword(inputData.get("password1"));
        if (hashedPasswordAndSalt == null) {
            model = new HashMap<>();
            model.put("errors", new ArrayList<>(Collections.singletonList("Could not save account. Try again later.")));
            model.put("userData", inputData);

            return ViewUtil.render(request, model, Path.Template.REGISTER);
        }

        // SAVE ACCOUNT TO DATABASE
        Account account;
        if (inputData.get("usertype").equals("customer")) {
            account = new CustomerAccount(inputData.get("username"), inputData.get("email"), hashedPasswordAndSalt);
        } else {
            account = new BoosterAccount(inputData.get("username"), inputData.get("email"), hashedPasswordAndSalt);
        }
        DaoFactory.getAccountDao().add(account);

        // SEND WELCOME EMAIL
        String to = account.getEmail();
        String body = Email.renderEmailTemplate("index/welcome-email",
                new HashMap<String, Object>(){{ put("userData", account); }});
        String subject = "Welcome " + account.getAccountName() + " in the CöderBoosters community!";
        // Email.send(to, body, subject); TODO: once SMTP properly set, we can start using this

        response.redirect(Path.Web.LOGIN);
        return null;
    };

    public static Route handleLogin = (request, response) -> {

        Map<String, String> inputData = collectLoginData(request);
        Long accountId = validateLoginCredentials(inputData);

        if (accountId == -1) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", new ArrayList<>(Collections.singletonList("Invalid credentials.")));

            return ViewUtil.render(request, model, Path.Template.LOGIN);
        }

        request.session().attribute("account_id", accountId);

        Account account = DaoFactory.getAccountDao().findAccountById(accountId);

        if (account instanceof BoosterAccount) {
            response.redirect(Path.Web.BOOSTER_ORDERS);
        } else {
            response.redirect(Path.Web.CUSTOMER_ORDERS);
        }
        return null;
    };

    public static Route handleLogout = (request, response) -> {

        request.session().removeAttribute("account_id");
        response.redirect(Path.Web.INDEX);

        return null;
    };

    public static Route handleCustomerProfileEditing = (request, response) -> {

        // TODO: NOT READY YET

        Long accountId = RequestUtil.getSessionAccountId(request);
        Map<String, String> inputData = collectEditData(request);

        List<String> errorMessages = validateCustomerProfileEditInfo(inputData);

        if (errorMessages.size() > 0) {
            Map<String, Object> model = new HashMap<>();
            model.put("errors", errorMessages);
            model.put("userData", inputData);

            return ViewUtil.render(request, model, Path.Template.CUSTOMER_PROFILE);
        }

        DaoFactory.getAccountDao().update(accountId, inputData);

        response.redirect(Path.Web.CUSTOMER_PROFILE_EDIT_SUCCESS);
        return null;
    };


    // ACCESSORY METHODS

    private static List<String> validateCustomerProfileEditInfo(Map<String, String> inputData) {
        List<String> errorMessages = new ArrayList<>();
        if (!InputField.PHONE.validate(inputData.get("phone"))) {
            errorMessages.add("Phone field is invalid.");
        }

        // TODO: NOT READY YET, maybe will not be needed

        return errorMessages;
    }

    private static Map<String, String> getUserData(Long userId) {

        // TODO: might be needed to extract data from account which will be passed into edit customer profile

        //Account account = DaoFactory.getAccountDao().find(userId);
        Map<String, String> modUser = new HashMap<>();
        modUser.put("gameAccounts", ""); // TODO: maybe pass in the game accounts list

        return modUser;
    }

    private static Map<String, String> collectRegistrationData(Request req) {
        Map<String, String> registrationData = new HashMap<>();
        registrationData.put("username", req.queryParams("username"));
        registrationData.put("email", req.queryParams("email"));
        registrationData.put("password1", req.queryParams("password1"));
        registrationData.put("password2", req.queryParams("password2"));
        registrationData.put("usertype", req.queryParams("usertype"));
        return registrationData;
    }

    private static List<String> validateRegistrationInput(Map<String, String> regInput) {
        List<String> errorMessages = new ArrayList<>();
        if (!InputField.USERNAME.validate(regInput.get("username"))) {
            errorMessages.add("Username field is wrong.");
        } else if (DaoFactory.getAccountDao().getAllAccountNames().contains(regInput.get("username"))) {
            errorMessages.add("Username is already taken.");
        }
        if (!InputField.EMAIL.validate(regInput.get("email"))) {
            errorMessages.add("E-mail field is wrong.");
        } else if (DaoFactory.getAccountDao().getAllEmails().contains(regInput.get("email"))) {
            errorMessages.add("E-mail field is already registered.");
        }
        if (!regInput.get("password1").equals(regInput.get("password2"))) {
            errorMessages.add("Passwords are not matching.");
        } else if (!InputField.PASSWORD.validate(regInput.get("password1")) ||
                !InputField.PASSWORD.validate(regInput.get("password2"))){
            errorMessages.add("Password incorrect. Has to be 4-8 characters long and use regular characters.");
        }
        if (!Arrays.asList("customer", "booster").contains(regInput.get("usertype"))) {
            errorMessages.add("Account type must be either customer or booster.");
        }
        return errorMessages;

    }

    private static Map<String, String> collectLoginData(Request req) {
        Map<String, String> loginData = new HashMap<>();
        loginData.put("username", req.queryParams("username"));
        loginData.put("password", req.queryParams("password"));
        return loginData;
    }

    private static Long validateLoginCredentials(Map<String, String> loginInput) {
        String accountName = loginInput.get("username");
        String password = loginInput.get("password");
        Account account = DaoFactory.getAccountDao().findAccountByName(accountName);
        if (account == null) {
            return -1L;
        }
        String hash = account.getPassword();

        boolean validPassword;
        try {
            validPassword = PasswordStorage.verifyPassword(password, hash);
        } catch (PasswordStorage.CannotPerformOperationException e) {
            System.out.println("Cannot perform operation.");
            return -1L;
        } catch (PasswordStorage.InvalidHashException e) {
            return -1L;
        }
        return validPassword ? account.getId() : -1;
    }

    private static Map<String, String> collectEditData(Request req) {
        // TODO: not ready yet
        Map<String, String> profileInfo = new HashMap<>();
        profileInfo.put("phone", req.queryParams("phone"));
        profileInfo.put("billcountry", req.queryParams("bill-country"));
        profileInfo.put("billcity", req.queryParams("bill-city"));
        profileInfo.put("billzip", req.queryParams("bill-zip"));
        profileInfo.put("billaddress", req.queryParams("bill-address"));
        profileInfo.put("shipcountry", req.queryParams("ship-country"));
        profileInfo.put("shipcity", req.queryParams("ship-city"));
        profileInfo.put("shipzip", req.queryParams("ship-zip"));
        profileInfo.put("shipaddress", req.queryParams("ship-address"));
        return profileInfo;
    }

}
