package application.controller;

import application.utils.Path;
import application.utils.ViewUtil;
import spark.Route;

import java.util.HashMap;
import java.util.Map;

public class OrderController {
    public static Route serveOrdersPage = (request, response) -> {

        Map<String, Object> model = new HashMap<>();

        return ViewUtil.render(request, model, Path.Template.ORDERS_PAGE);
    };
}
