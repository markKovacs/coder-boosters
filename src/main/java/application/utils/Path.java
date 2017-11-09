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
        public static final String CUSTOMER_ORDERS = "/customer-orders";
        public static final String BOOSTER_ORDERS = "/booster-orders";
        public static final String SELECT_GAME = "/select-game";
        public static final String ORDER_FORM = "/order-form";
        public static final String CREATE_ORDER = "/create-order";
        public static final String CUSTOMER_PAYPAL = "/customer-paypal";
    }

    public static class Template {
        public final static String INDEX = "index/index";
        public static final String REGISTER = "index/register";
        public static final String LOGIN = "index/login";
        public static final String CUSTOMER_PROFILE = "account/customer-profile";
        public static final String BOOSTER_PROFILE = "account/booster-profile";
        public static final String CUSTOMER_ORDERS = "account/customer-orders";
        public static final String BOOSTER_ORDERS = "account/booster-orders";
        public static final String SELECT_GAME = "select-game";
        public static final String ORDER_FORM = "order-form";
        public static final String CUSTOMER_PAYPAL = "account/customer-paypal";
    }

}
