package application.service;

import application.dao.GameAccountDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static org.junit.jupiter.api.Assertions.assertTrue;

@RunWith(MockitoJUnitRunner.class)
public class GameAccountServiceTest {

    @Mock
    private GameAccountDao gameAccountDaoMock;
    @InjectMocks
    private GameAccountService gameAccountService;

    @Test
    public void test() {
        assertTrue(true);
    }

}