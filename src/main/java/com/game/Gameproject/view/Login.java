package com.game.Gameproject.view;

import com.game.Gameproject.domain.User;
import com.game.Gameproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
@RequestMapping(method={RequestMethod.POST,RequestMethod.GET})
public class Login {
    String error = "";

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    @Autowired
    UserService userService;
    @RequestMapping(method = RequestMethod.GET, value = "/login")
    public String loginView(Model model) {
        if (getError().isEmpty()) {
            model.addAttribute("error", getError());
            return "login";
        } else {
            model.addAttribute("error", getError());
            setError("");
            return "login";
        }
    }
    public ModelAndView loginModel() {
        return new ModelAndView("login", "login", new User());
    }

    @RequestMapping(value = "/loginController", method = RequestMethod.POST)
    public String loginController(@ModelAttribute User user, HttpSession httpSession, Model model) {
        Optional<User> found = userService.findUserByMailAndPassword(user.getMail(), user.getPassword());
        if (found.isPresent()){
            httpSession.setAttribute("loggedUser", found.get());
            return found.get().isAdmin() ? "redirect:/admin" : "redirect:/home";
        }else{
            setError("Wrong email or password!");
            return "redirect:/login";
        }
    }
}
