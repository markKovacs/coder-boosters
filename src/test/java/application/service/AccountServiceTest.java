package application.service;

import application.model.account.Account;
import application.model.account.CustomerAccount;
import application.repository.AccountRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import java.util.*;
import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class AccountServiceTest {

    @Mock
    private AccountRepository accountRepositoryMock;
    @Mock
    private PasswordHashService passwordHashServiceMock;
    @InjectMocks
    private AccountService accountService;

    private Map<String, String> registerInputData;
    private Map<String, String> loginInputData;

    @Before
    public void setup() {
        registerInputData = new HashMap<>();
        registerInputData.put("username", "bence");
        registerInputData.put("email", "bence@gmail.com");
        registerInputData.put("password1", "pass");
        registerInputData.put("password2", "pass");
        registerInputData.put("usertype", "customer");

        loginInputData = new HashMap<>();
        loginInputData.put("username", "mark");
        loginInputData.put("password", "pass");
    }

    @Test
    public void testRegisterExistingUserNameReturnsErrorMessage() {

        List<String> mockedAccountNames = Arrays.asList("mark", "attila");
        when(accountRepositoryMock.getAccountNames()).thenReturn(mockedAccountNames);

        registerInputData.put("username", "mark");

        List<String> expectedErrorMessages = new ArrayList<>();
        expectedErrorMessages.add("Username is already taken.");

        List<String> actualErrors = accountService.validateRegistrationInput(registerInputData);
        assertArrayEquals(castListToArray(expectedErrorMessages), castListToArray(actualErrors));
    }

    @Test
    public void testRegisterExistingEmailAddressReturnsErrorMessage() {

        List<String> mockedEmails = Arrays.asList("mark@gmail.com", "attila@gmail.com");
        when(accountRepositoryMock.getEmails()).thenReturn(mockedEmails);

        registerInputData.put("email", "mark@gmail.com");

        List<String> expectedErrorMessages = new ArrayList<>();
        expectedErrorMessages.add("E-mail field is already registered.");

        List<String> actualErrors = accountService.validateRegistrationInput(registerInputData);
        assertArrayEquals(castListToArray(expectedErrorMessages), castListToArray(actualErrors));
    }

    @Test
    public void testRegisterPasswordMismatchReturnsErrorMessage() {

        registerInputData.put("password1", "password1234");
        registerInputData.put("password2", "password5678");

        List<String> expectedErrorMessages = new ArrayList<>();
        expectedErrorMessages.add("Passwords are not matching.");

        List<String> actualErrors = accountService.validateRegistrationInput(registerInputData);
        assertArrayEquals(castListToArray(expectedErrorMessages), castListToArray(actualErrors));
    }

    @Test
    public void testRegisterWrongUserTypeReturnsErrorMessage() {

        registerInputData.put("usertype", "wrongType");

        List<String> expectedErrorMessages = new ArrayList<>();
        expectedErrorMessages.add("Account type must be either customer or booster.");

        List<String> actualErrors = accountService.validateRegistrationInput(registerInputData);
        assertArrayEquals(castListToArray(expectedErrorMessages), castListToArray(actualErrors));
    }

    @Test
    public void testLoginNonExistingAccountNameReturnsMinusOne()
            throws PasswordHashService.InvalidHashException, PasswordHashService.CannotPerformOperationException {

/*        when(passwordHashServiceMock.verifyPassword("pass", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX"))
                .thenReturn(true);*/

        Account expected = null;
        Account actualAccount = accountService.validateLoginCredentials(loginInputData);
        assertEquals(expected, actualAccount);
    }

    @Test
    public void testLoginWrongPasswordReturnsMinusOne()
            throws PasswordHashService.InvalidHashException, PasswordHashService.CannotPerformOperationException {

        Account dummyAccount = new CustomerAccount("mark", "mark@gmail.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        when(accountRepositoryMock.findByAccountName("mark")).thenReturn(dummyAccount);

/*        when(passwordHashServiceMock.verifyPassword("wrongPass", dummyAccount.getPassword()))
                .thenReturn(true);*/

        Account expected = null;
        Account actualAccount = accountService.validateLoginCredentials(loginInputData);
        assertEquals(expected, actualAccount);
    }

    @Test
    public void testLoginCorrectPasswordReturnsMinusOne()
            throws PasswordHashService.InvalidHashException, PasswordHashService.CannotPerformOperationException {

        Account dummyAccount = new CustomerAccount("mark", "mark@gmail.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX");
        dummyAccount.setId(666L);

        when(accountRepositoryMock.findByAccountName("mark")).thenReturn(dummyAccount);
        when(passwordHashServiceMock.verifyPassword("pass", dummyAccount.getPassword()))
                .thenReturn(true);

        Long expectedId = 666L;
        Account actualAccount = accountService.validateLoginCredentials(loginInputData);
        assertEquals(expectedId, actualAccount.getId());
    }

    @Test
    public void testSaveAccountCorrectly() {
        String hash = "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX";

/*        Account expectedAccount = new CustomerAccount("mark", "mark@gmail.com", hash);
        expectedAccount.setId(1L);
        when(accountDaoMock.add(expectedAccount));*/

        Account actualAccount = accountService.saveAccount(registerInputData, hash);

        assertTrue(actualAccount instanceof CustomerAccount);
    }

    private String[] castListToArray(List<String> stringList) {
        String[] stringArray = new String[stringList.size()];
        return stringList.toArray(stringArray);
    }

}
