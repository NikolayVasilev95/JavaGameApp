package com.game.Gameproject.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class Logout {
    @RequestMapping(method = RequestMethod.GET, value = "/logout")
    public ModelAndView destroySession(HttpServletRequest request) {
        request.getSession().invalidate();
        String projectUrl = "/";
        return new ModelAndView("redirect:" + projectUrl);
    }
}
