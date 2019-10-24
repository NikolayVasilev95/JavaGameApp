package com.game.Gameproject.view;

import com.game.Gameproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping(method={RequestMethod.POST,RequestMethod.GET})
public class DeleteUser {
    @Autowired
    UserService userService;
    @RequestMapping(method = RequestMethod.POST, value = "/deleteUser")
    public String deleteUser(@RequestHeader Map<String, String> headers, @RequestParam(required = false) String userForDelete, HttpSession httpSession) {
        if (Objects.isNull(httpSession.getAttribute("loggedUser"))){
            return "redirect:/";
        } else {
            String isAjaxHeader  = headers.get("x-requested-with");
            if(isAjaxHeader != null) {
                if(isAjaxHeader.equals("XMLHttpRequest")) {
                    long userId = Long.parseLong(userForDelete);
                    System.out.println(userId);
                    userService.deleteById(userId);
                }
            }
            return "redirect:/AdminPanelUsers";
        }
    }
}
