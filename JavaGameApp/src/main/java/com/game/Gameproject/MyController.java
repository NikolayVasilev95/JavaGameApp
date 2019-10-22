package com.game.Gameproject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.time.LocalDateTime;

@Controller
@ResponseBody
public class MyController {

    @RequestMapping(value = "/test", method = RequestMethod.GET, produces = MediaType.TEXT_PLAIN_VALUE)
    public String handler(HttpSession httpSession) {
        String sessionKey = "firstAccessTime";
        Object time = httpSession.getAttribute(sessionKey);
        if (time == null) {
            time = LocalDateTime.now();
            httpSession.setAttribute(sessionKey, time);
        }
        return "first access time : " + time+"\nsession id: "+httpSession.getId();
    }

    @RequestMapping(value = "/destroy", method = RequestMethod.GET)
    public ModelAndView destroySession(HttpServletRequest request) {
        request.getSession().invalidate();
        String projectUrl = "/test";
        return new ModelAndView("redirect:" + projectUrl);
    }
}