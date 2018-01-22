package application.utils;

import java.util.regex.Pattern;

public enum InputField {
    FULL_NAME("^[a-zA-Z -]{4,50}$"),
    EMAIL("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"),
    PHONE("\\d{2,3}-\\d{2,3}-\\d{6,10}"),
    COUNTRY("^[a-zA-Z -]{2,50}$"),
    CITY("^[a-zA-Z -]{2,50}$"),
    ZIP_CODE("^[a-zA-Z0-9 -]{2,10}$"),
    ADDRESS("^[a-zA-Z0-9,. -]{4,100}$"),
    CARD_NUM_PART("\\d{4}"),
    CVC("\\d{3}"),
    CARD_HOLDER("^[a-zA-Z -]{4,50}$"),
    EXP_YEAR("^20(1[7-9]|[2-9][0-9])$"),
    EXP_MONTH("^(0?[1-9]|1[012])$"),
    USERNAME("^[a-zA-Z0-9-_]{4,50}$"),
    PASSWORD("^[a-zA-Z -_!?]{4,50}$");

    private String regex;

    InputField(String regex) {
        this.regex = regex;
    }

    public String getRegex() {
        return regex;
    }

    public boolean validate(String inputValue) {
        Pattern compiledPattern = Pattern.compile(this.getRegex());
        return compiledPattern.matcher(inputValue).matches();
    }
}
