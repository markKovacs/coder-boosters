package application.controller;

import application.utils.Path;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping(Path.Web.INDEX)
    public String serveIndexPage() {

        return Path.Template.INDEX;
    }

    @GetMapping(Path.Web.BOOSTERS)
    public String serveBoostersPage() {

        return Path.Template.BOOSTERS;
    }

}
