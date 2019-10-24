package com.game.Gameproject.view;

import com.game.Gameproject.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Objects;

@Controller
@RequestMapping(method={RequestMethod.POST,RequestMethod.GET})
public class Admin {

    @RequestMapping(method = RequestMethod.GET, value = "/admin")
    public String admin(HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("loggedUser");
        if (Objects.isNull(user)) {
            return "redirect:/";
        }
        return "AdminPanel";
    }
}
