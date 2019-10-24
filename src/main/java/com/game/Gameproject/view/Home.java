package com.game.Gameproject.view;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Objects;

@Controller
public class Home {
    @RequestMapping(method = RequestMethod.GET, value = "/home")
    public String home(HttpSession httpSession) {
        if (Objects.isNull(httpSession.getAttribute("loggedUser"))){
            return "redirect:/";
        } else {
            return "home";
        }
    }
}
