package application.service;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.repository.AccountRepository;
import application.utils.InputField;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class AccountService {

    private AccountRepository accountRepository;
    private PasswordHashService passwordHashService;
    private EmailService emailService;

    public AccountService(AccountRepository accountRepository,
                          PasswordHashService passwordHashService,
                          EmailService emailService) {

        this.accountRepository = accountRepository;
        this.passwordHashService = passwordHashService;
        this.emailService = emailService;
    }

    public List<String> getSuccessMessageOnEdit(boolean isProfileEdited) {
        return isProfileEdited ? new ArrayList<>(Collections.singletonList("Profile successfully edited.")) : null;
    }

    public List<String> validateRegistrationInput(Map<String, String> regInput) {

        List<String> errorMessages = new ArrayList<>();

        if (!InputField.USERNAME.validate(regInput.get("username"))) {
            errorMessages.add("Username field is wrong.");
        } else if (accountRepository.getAccountNames().contains(regInput.get("username"))) {
            errorMessages.add("Username is already taken.");
        }
        if (!InputField.EMAIL.validate(regInput.get("email"))) {
            errorMessages.add("E-mail field is wrong.");
        } else if (accountRepository.getEmails().contains(regInput.get("email"))) {
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

        accountRepository.save(account);
        return account;
    }

    public void sendWelcomeEmail(Account account) {

        // TODO: do not delete, could be used if SMTP server is set

        String to = account.getEmail();
        String body = emailService.renderEmailTemplate("index/welcome-email",
                new HashMap<String, Object>() {{
                    put("userData", account);
                }});
        String subject = "Welcome " + account.getAccountName() + " in the CöderBoosters community!";

        emailService.send(to, body, subject);
    }

    public Account validateLoginCredentials(Map<String, String> loginInput) {

        String accountName = loginInput.get("username");
        String password = loginInput.get("password");
        Account account = accountRepository.findByAccountName(accountName);

        if (account == null) {
            return null;
        }
        String hash = account.getPassword();

        boolean validPassword;
        try {
            validPassword = passwordHashService.verifyPassword(password, hash);
        } catch (PasswordHashService.CannotPerformOperationException e) {
            System.out.println("Cannot perform operation.");
            return null;
        } catch (PasswordHashService.InvalidHashException e) {
            return null;
        }

        return validPassword ? account : null;
    }

    public boolean increaseBoostCoinAmount(Account account, int amount) {

        if (amount < 0) return false;

        account.setBoostCoin(account.getBoostCoin() + amount);
        accountRepository.save(account);
        return true;
    }

    public boolean decreaseBoostCoinAmount(Account account, int amount) {

        // TODO: put logic here if customer does not have enough money, return false and cancel process

        account.setBoostCoin(account.getBoostCoin() + (-1) * amount);
        accountRepository.save(account);
        return true;
    }

    public void transferBoostCoin(Account boosterAccount, int totalPrice) {
        boosterAccount.changeBoostCoin(totalPrice);
        accountRepository.save(boosterAccount);
    }

    public List<String> getInvalidLoginCredsErrorMessage() {
        return new ArrayList<>(Collections.singletonList("Invalid credentials."));
    }

    public Account refresh(Account account) {
        return accountRepository.save(account);
    }

    public List<String> validateCustomerProfileEditInfo(Map<String, String> inputData) {
        // TODO: dummy, to be implemented
        return null;
    }

    public void update(Long accountId, Map<String, String> inputData) {
        // TODO: dummy, to be implemented
    }

}
