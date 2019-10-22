package com.game.Gameproject;

import com.game.Gameproject.domain.GameStatistics;
import com.game.Gameproject.domain.User;
import com.game.Gameproject.service.GameStatisticsService;
import com.game.Gameproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Random;

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

    @RequestMapping(method = RequestMethod.GET, value = "/todo")
    public String todo() {
        return "todo.html";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/logout")
    public ModelAndView destroySession(HttpServletRequest request) {
        request.getSession().invalidate();
        String projectUrl = "/";
        return new ModelAndView("redirect:" + projectUrl);
    }
}
