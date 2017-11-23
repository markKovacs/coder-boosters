package application.service;

import application.dao.AccountDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static org.junit.jupiter.api.Assertions.assertTrue;

@RunWith(MockitoJUnitRunner.class)
public class AccountServiceTest {

    @Mock
    private AccountDao accountDaoMock;
    @Mock
    private PasswordHashService passwordHashServiceMock;
    @Mock
    private EmailService emailServiceMock;
    @InjectMocks
    private AccountService accountService;

    @Test
    public void test() {
        assertTrue(true);
    }

}