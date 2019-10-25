package com.game.Gameproject.view;

import com.game.Gameproject.domain.User;
import com.game.Gameproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Map;
import java.util.Objects;

@Controller
@Validated
@RequestMapping(method={RequestMethod.POST,RequestMethod.GET})
public class EditUser {
    @Autowired
    UserService userService;
    @RequestMapping(method = RequestMethod.POST, value = "/editUser")
    public String EditUser(@RequestHeader Map<String, String> headers, @RequestBody(required = false) @Valid User userForEdit, HttpSession httpSession) {
        if (Objects.isNull(httpSession.getAttribute("loggedUser"))){
            return "redirect:/";
        } else {
            String isAjaxHeader  = headers.get("x-requested-with");
            if(isAjaxHeader != null) {
                if(isAjaxHeader.equals("XMLHttpRequest")) {
                   userService.updateUser(userForEdit);
                }
            }
            return "redirect:/AdminPanelUsers";
        }
    }
}
