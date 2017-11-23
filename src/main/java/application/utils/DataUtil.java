package application.utils;

import java.util.Calendar;
import java.util.Date;

public class DataUtil {

    public Date createDate(int y, int m, int d, int h) {
        Calendar cal = Calendar.getInstance();
        cal.set(y, m-1, d, h, 0);
        return cal.getTime();
    }

}
