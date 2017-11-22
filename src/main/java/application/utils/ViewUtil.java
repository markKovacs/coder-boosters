package application.utils;

import application.dao.AccountDao;
import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import spark.ModelAndView;
import spark.Request;

import java.util.Map;

public class ViewUtil {

    public String render(Request request, Map<String, Object> model, String view, Account account) {

//        AccountDao accDao = DaoFactory.getAccountDao();
//        Long currentAccId = RequestUtil.getSessionAccountId(request);
//        Account account = accDao.findAccountById(currentAccId);

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
