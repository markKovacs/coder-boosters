package application.utils;

public class Path {

    public static class Web {
        public static final String INDEX = "/";
        public static final String REGISTER = "/register";
        public static final String LOGIN = "/login";
        public static final String CUSTOMER_PROFILE = "/customer-profile";
        public static final String BOOSTER_PROFILE = "/booster-profile";
        public static final String CUSTOMER_PROFILE_EDIT_SUCCESS = "/customer-profile?edited=successful";
        public static final String BOOSTER_PROFILE_EDIT_SUCCESS = "/booster-profile?edited=successful";
        public static final String LOGOUT = "/logout";
        public static final String ORDERS_PAGE = "/orders-page";
        public static final String BOOSTER_PAGE = "/booster-page";


        public static final String CHOOSE_GAME = "/choose-game";
        public static final String ORDER_FORM = "/order-form";
    }

    public static class Template {
        public final static String INDEX = "index/index";
        public static final String REGISTER = "index/register";
        public static final String LOGIN = "index/login";
        public static final String CUSTOMER_PROFILE = "account/customer_profile";
        public static final String BOOSTER_PROFILE = "account/booster_profile";
        public static final String ORDERS_PAGE = "account/orders-page";
        public static final String BOOSTER_PAGE = "account/booster-order";
        public static final String CHOOSE_GAME = "choose_game";
        public static final String ORDER_FORM = "order-form";
    }

}
