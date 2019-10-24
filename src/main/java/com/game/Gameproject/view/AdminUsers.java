package com.game.Gameproject.view;

import com.game.Gameproject.domain.User;
import com.game.Gameproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping(method={RequestMethod.POST,RequestMethod.GET})
public class AdminUsers {
    @Autowired
    UserService userService;
    @RequestMapping(method = RequestMethod.GET, value = "/AdminPanelUsers")
    public String adminPanelUsers(Model model, HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("loggedUser");
        if (Objects.isNull(user)) {
            return "redirect:/";
        } else {
            List<User> allUsers = userService.findAllUsers();
            model.addAttribute("allUsers", allUsers);
            return "AdminPanelUsers";
        }
    }
}
