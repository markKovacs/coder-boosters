package application.utils;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import org.springframework.stereotype.Service;
import spark.ModelAndView;
import spark.Request;

import java.util.Map;
@Service
public class ViewUtil {

    public String render(Request request, Map<String, Object> model, String view, Account account) {

        // TODO: instanceof is expensive, Account should have an accountType field and use that instead

        String accountType = null;
        if (account instanceof CustomerAccount) {
            accountType = "customer";
        } else if (account instanceof BoosterAccount) {
            accountType = "booster";
        }

        // ADDED TO EVERY VIEW TO BE RENDERED
        model.put("currentUser", account != null ? account.getAccountName() : null);
        model.put("loggedInAs", accountType);
        model.put("balance", account != null ? account.getBoostCoin() : 0);

        return new ThymeleafTemplateEngine().render(new ModelAndView(model, view));
    }

}
