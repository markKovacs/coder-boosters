package application.service;

import application.dao.AccountDao;
import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.utils.InputField;

import java.util.*;

public class AccountService {

    private AccountDao accountDao;
    private PasswordHashService passwordHashService;
    private EmailService emailService;

    public AccountService(AccountDao accountDao, PasswordHashService passwordHashService, EmailService emailService) {
        this.accountDao = accountDao;
        this.passwordHashService = passwordHashService;
        this.emailService = emailService;
    }

    public Account findAccountById(Long accountId) {
        return accountDao.findAccountById(accountId);
    }

    public CustomerAccount findCustomerById(Long accountId) {
        return accountDao.findCustomerById(accountId);
    }

    public List<String> getSuccessMessageOnEdit(boolean isProfileEdited) {
        return isProfileEdited ? new ArrayList<>(Collections.singletonList("Profile successfully edited.")) : null;
    }

    public List<String> validateRegistrationInput(Map<String, String> regInput) {

        List<String> errorMessages = new ArrayList<>();

        if (!InputField.USERNAME.validate(regInput.get("username"))) {
            errorMessages.add("Username field is wrong.");
        } else if (accountDao.getAllAccountNames().contains(regInput.get("username"))) {
            errorMessages.add("Username is already taken.");
        }
        if (!InputField.EMAIL.validate(regInput.get("email"))) {
            errorMessages.add("E-mail field is wrong.");
        } else if (accountDao.getAllEmails().contains(regInput.get("email"))) {
            errorMessages.add("E-mail field is already registered.");
        }
        if (!regInput.get("password1").equals(regInput.get("password2"))) {
            errorMessages.add("Passwords are not matching.");
        } else if (!InputField.PASSWORD.validate(regInput.get("password1")) ||
                !InputField.PASSWORD.validate(regInput.get("password2"))) {
            errorMessages.add("Password incorrect. Has to be 4-8 characters long and use regular characters.");
        }
        if (!Arrays.asList("customer", "booster").contains(regInput.get("usertype"))) {
            errorMessages.add("Account type must be either customer or booster.");
        }

        return errorMessages;
    }

    public String createHashedPassword(String password1) {
        return passwordHashService.createHashedPassword(password1);
    }

    public List<String> getHashingErrorMessage() {
        return new ArrayList<>(Collections.singletonList("Could not save account. Try again later."));
    }

    public Account saveAccount(Map<String, String> inputData, String passwordHash) {
        Account account;

        if (inputData.get("usertype").equals("booster")) {
            account = new BoosterAccount(inputData.get("username"), inputData.get("email"), passwordHash);
        } else {
            account = new CustomerAccount(inputData.get("username"), inputData.get("email"), passwordHash);
        }

        accountDao.add(account);
        return account;
    }

    public void sendWelcomeEmail(Account account) {

        String to = account.getEmail();
        String body = emailService.renderEmailTemplate("index/welcome-email",
                new HashMap<String, Object>() {{
                    put("userData", account);
                }});
        String subject = "Welcome " + account.getAccountName() + " in the CöderBoosters community!";

        emailService.send(to, body, subject);
    }

    public Long validateLoginCredentials(Map<String, String> loginInput) {

        String accountName = loginInput.get("username");
        String password = loginInput.get("password");
        Account account = accountDao.findAccountByName(accountName);

        if (account == null) {
            return -1L;
        }
        String hash = account.getPassword();

        boolean validPassword;
        try {
            validPassword = passwordHashService.verifyPassword(password, hash);
        } catch (PasswordHashService.CannotPerformOperationException e) {
            System.out.println("Cannot perform operation.");
            return -1L;
        } catch (PasswordHashService.InvalidHashException e) {
            return -1L;
        }

        return validPassword ? account.getId() : -1L;
    }

    public List<String> validateCustomerProfileEditInfo(Map<String, String> inputData) {
        List<String> errorMessages = new ArrayList<>();
        if (!InputField.PHONE.validate(inputData.get("phone"))) {
            errorMessages.add("Phone field is invalid.");
        }

        // TODO: NOT READY YET, maybe will not be needed

        return errorMessages;
    }

    public void update(Long accountId, Map<String, String> inputData) {
        accountDao.update(accountId, inputData);
    }

    public boolean increaseBoostCoinAmount(CustomerAccount account, int amount) {

        if (amount < 0) return false;

        accountDao.changeBoostCoinByAmount(account, amount);
        return true;
    }

    public BoosterAccount findBoosterById(Long accountId) {
        return accountDao.findBoosterById(accountId);
    }

    public boolean decreaseBoostCoinAmount(CustomerAccount account, int amount) {

        // TODO: put logic here if customer does not have enough money, return false and cancel process

        accountDao.changeBoostCoinByAmount(account, amount);
        return true;
    }

    public void transferBoostCoin(BoosterAccount boosterAccount, int totalPrice) {
        accountDao.transferBoostCoin(boosterAccount, totalPrice);
    }
}
