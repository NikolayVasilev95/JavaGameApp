package com.game.Gameproject.view;

import com.game.Gameproject.domain.GameStatistics;
import com.game.Gameproject.domain.User;
import com.game.Gameproject.service.GameStatisticsService;
import com.game.Gameproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(method={RequestMethod.POST,RequestMethod.GET})
public class Register {
    String error = "";

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    @Autowired
    private UserService userService;

    @Autowired
    private GameStatisticsService gameStatisticsService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerView(Model model){
        if (getError().isEmpty()) {
            model.addAttribute("error", getError());
            return "register";
        } else {
            model.addAttribute("error", getError());
            setError("");
            return "register";
        }
    }
    public ModelAndView registerModel() {
        return new ModelAndView("register", "command", new User());
    }

    @RequestMapping(value = "/registerController", method = RequestMethod.POST)
    public String signUpController(@ModelAttribute User user, HttpSession httpSession) {
        if (userService.existsByMail(user.getMail())){
            setError("Email already exists!");
            return "redirect:/register";
        }
        user = userService.createUser(user);
        gameStatisticsService.updateStatistics(new GameStatistics(user));
        httpSession.setAttribute("loggedUser", user);
        return "redirect:/home";
    }
}
