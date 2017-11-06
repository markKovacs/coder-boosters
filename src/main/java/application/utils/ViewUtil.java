package application.utils;

import spark.ModelAndView;
import spark.Request;

import java.util.Map;

public class ViewUtil {

    public static String render(Request request, Map<String, Object> model, String view) {
        model.put("currentUser", RequestUtil.getSessionCurrentUser(request));
        return new ThymeleafTemplateEngine().render(new ModelAndView(model, view));
    }

}
