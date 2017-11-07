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
    }

    public static class Template {
        public final static String INDEX = "index";
        public static final String REGISTER = "register";
        public static final String LOGIN = "login";
        public static final String CUSTOMER_PROFILE = "customer_profile";
        public static final String BOOSTER_PROFILE = "booster_profile";
    }

}
