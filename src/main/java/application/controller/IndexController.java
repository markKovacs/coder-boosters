package application.controller;

import application.utils.Path;
import application.utils.ViewUtil;
import spark.Route;
import java.util.HashMap;
import java.util.Map;

public class IndexController {

    public static Route serveIndexPage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();

        return ViewUtil.render(request, model, Path.Template.INDEX);
    };

    public static Route serverBoostersPage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();
        return ViewUtil.render(request, model, Path.Template.BOOSTERS);
    };

}
