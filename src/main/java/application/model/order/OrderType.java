package application.model.order;

public enum OrderType {
    GAMES_WON, GAMES_PLAYED, DIVISION_BOOST;

    public static OrderType safeValueOf(String orderType) {
        try {
            return valueOf(orderType);
        } catch (IllegalArgumentException ie) {
            return null;
        }
    }

}