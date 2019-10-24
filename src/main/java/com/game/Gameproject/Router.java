package com.game.Gameproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(method={RequestMethod.POST,RequestMethod.GET})
public class Router {

    @RequestMapping(method = RequestMethod.GET, value = "/")
    public String index() {
        return "index.html";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/about")
    public String about() {
        return "about.html";
    }

}
