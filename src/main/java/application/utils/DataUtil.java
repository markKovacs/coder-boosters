package application.utils;

import org.springframework.stereotype.Component;

import java.util.Calendar;
import java.util.Date;
import java.util.InputMismatchException;

@Component
public class DataUtil {

    public Date createDate(int y, int m, int d, int h) {
        Calendar cal = Calendar.getInstance();
        cal.set(y, m-1, d, h, 0);
        return cal.getTime();
    }

    public int castStringToInt(String numberAsString) {
        // TODO: int/long.. etc. should be Wrapper Type (Integer) so we can rather return with null and not a valid number (-1)
        int number;
        try {
            number = Integer.parseInt(numberAsString);
        } catch (NumberFormatException e) {
            number = -1;
        }
        return number;
    }

    public double castStringToDouble(String numberAsString) {
        // TODO: see above...
        double number;
        try {
            number = Double.parseDouble(numberAsString);
        } catch (NumberFormatException e) {
            number = -1.0;
        }
        return number;
    }

    public long castStringToLong(String numberAsString) {
        // TODO: see above...
        long number;
        try {
            number = Long.parseLong(numberAsString);
        } catch (NumberFormatException e) {
            number = -1L;
        }
        return number;
    }

}
