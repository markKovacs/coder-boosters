package application.controller;

import application.utils.Path;
import application.utils.ViewUtil;
import spark.Route;
import java.util.HashMap;
import java.util.Map;

public class IndexController {

    private ViewUtil viewUtil;

    public IndexController(ViewUtil viewUtil) {
        this.viewUtil = viewUtil;
    }

    public Route serveIndexPage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();

        return viewUtil.render(request, model, Path.Template.INDEX, null);
    };

    public  Route serverBoostersPage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();
        return viewUtil.render(request, model, Path.Template.BOOSTERS,null);
    };

}
