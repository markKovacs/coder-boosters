package application.utils;

import application.dao.AccountDao;
import application.dao.DaoFactory;
import application.model.Account;
import application.model.BoosterAccount;
import application.model.CustomerAccount;
import spark.ModelAndView;
import spark.Request;

import java.util.Map;

public class ViewUtil {

    public static String render(Request request, Map<String, Object> model, String view) {

        AccountDao accDao = DaoFactory.getAccountDao();
        Long currentAccId = RequestUtil.getSessionAccountId(request);
        Account account = accDao.find(currentAccId);

        String accountType = null;
        if (account instanceof CustomerAccount) {
            accountType = "customer";
        } else if (account instanceof BoosterAccount) {
            accountType = "booster";
        }

        // ADDED TO EVERY VIEW TO BE RENDERED
        model.put("currentUser", account != null ? account.getAccountName() : null);
        model.put("loggedInAs", accountType);

        return new ThymeleafTemplateEngine().render(new ModelAndView(model, view));
    }

}
