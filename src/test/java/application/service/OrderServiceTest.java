package application.service;

import application.repository.BoostOrderRepository;
import application.utils.DataUtil;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class OrderServiceTest {

    @Mock
    private BoostOrderRepository orderRepositoryMock;
    @Mock
    private DataUtil dataUtilMock;
    @InjectMocks
    private OrderService orderService;

    private Map<String, String> testInputData = new HashMap<>();

    @Before
    public void setup() {
        testInputData.put("game_type", "LOL");
        testInputData.put("currentRank", "DIAMOND_II");
        testInputData.put("numberOfGames", "5");
        testInputData.put("orderType", "GAMES_PLAYED");
        testInputData.put("bonusPercentage", "10");
        testInputData.put("year", "2018");
        testInputData.put("month", "4");
        testInputData.put("day", "4");
        testInputData.put("hour", "8");
        testInputData.put("gameAccName", "attila");
        testInputData.put("gameAccPassword", "pass");
        when(dataUtilMock.castStringToInt(testInputData.get("numberOfGames"))).thenReturn(5);
        when(dataUtilMock.castStringToDouble(testInputData.get("bonusPercentage"))).thenReturn(10.0);
        when(dataUtilMock.castStringToInt(testInputData.get("year"))).thenReturn(2018);
        when(dataUtilMock.castStringToInt(testInputData.get("month"))).thenReturn(4);
        when(dataUtilMock.castStringToInt(testInputData.get("day"))).thenReturn(4);
        when(dataUtilMock.castStringToInt(testInputData.get("hour"))).thenReturn(14);
    }

    @Test
    public void validateOrderDataInvalidLOLGameType() {
        testInputData.put("game_type", "FIFA");

        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Wrong game type.");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLCurrentRank() {
        testInputData.put("currentRank", "WOOD");

        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Selected league/division rank is invalid.");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLNumberOfGames() {
        testInputData.put("numberOfGames", "-4");
        when(dataUtilMock.castStringToInt(testInputData.get("numberOfGames"))).thenReturn(-4);

        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Number of games selected should be between 1-10.");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLOrderType() {
        testInputData.put("orderType", "Nothing");

        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Selected order type is invalid.");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLBonusPercentage() {
        testInputData.put("bonusPercentage", "4.0");
        when(dataUtilMock.castStringToDouble(testInputData.get("bonusPercentage"))).thenReturn(4.0);


        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Bonus percentage must be 0, 5, 10 or 15");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLYear() {
        testInputData.put("year", "2004");
        when(dataUtilMock.castStringToInt(testInputData.get("year"))).thenReturn(2004);


        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Year must be between 2017 and 2099");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLMonth() {
        testInputData.put("month", "44");
        when(dataUtilMock.castStringToInt(testInputData.get("month"))).thenReturn(44);


        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Months must be between 1 and 12");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLDay() {
        testInputData.put("day", "44");
        when(dataUtilMock.castStringToInt(testInputData.get("day"))).thenReturn(44);


        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Days must be between 1 and 31");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLHour() {
        testInputData.put("hour", "44");
        when(dataUtilMock.castStringToInt(testInputData.get("hour"))).thenReturn(44);


        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Hours must be between 0 and 24");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLGameAccName() {
        testInputData.put("gameAccName", "@@@@4444");

        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Game account name is invalid.");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    @Test
    public void validateOrderDataInvalidLOLGameAccPassword() {
        testInputData.put("gameAccPassword", "4");

        List<String> expectedErrorMessage = new ArrayList<>();
        expectedErrorMessage.add("Game account password is invalid.");

        List<String> actualErrorMessage = orderService.validateOrderData(testInputData);
        assertArrayEquals(castListToArray(expectedErrorMessage), castListToArray(actualErrorMessage));
    }

    private String[] castListToArray(List<String> stringList) {
        String[] stringArray = new String[stringList.size()];
        return stringList.toArray(stringArray);
    }

}
