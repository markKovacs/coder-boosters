package application;

public class ConfigTemplate {

    // Application environment settings
    public static final boolean isDevEnv = true;
    public static boolean isStorageJPA = true;

    // SMTP server settings (for sending emails to users)
    public static final String EMAIL_FROM = "";
    public static final String EMAIL_SENDER_HOST = "";
    public static final String SMTP_HOST = "";
    public static final String SMTP_USER = "";
    public static final String SMTP_PASS = "";
    public static final String SMTP_PORT = "";

    // Database connection settings (will be unused currently, due to persistence.xml)
    public static final String DB_TYPE = "";
    public static final String HOST = "";
    public static final String PORT = "";
    public static final String DB_NAME = "";
    public static final String USER = "";
    public static final String PASSWORD = "";

}