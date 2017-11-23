package application.service;

import application.dao.OrderDao;
import application.utils.DataUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static org.junit.jupiter.api.Assertions.assertTrue;

@RunWith(MockitoJUnitRunner.class)
public class OrderServiceTest {

    @Mock
    private OrderDao orderDaoMock;
    @Mock
    private DataUtil dataUtilMock;
    @InjectMocks
    private OrderService orderService;

    @Test
    public void test() {
        assertTrue(true);
    }

}
