package com.game.Gameproject.view;

import com.game.Gameproject.GameRockPaperSizer;
import com.game.Gameproject.domain.GameStatistics;
import com.game.Gameproject.domain.User;
import com.game.Gameproject.service.GameStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Objects;
import java.util.Random;

@Controller
public class Home {
    @Autowired
    GameStatisticsService gameStatisticsService;
    @RequestMapping(method = RequestMethod.GET, value = "/home")
    public String home(
            @RequestHeader Map<String, String> headers,
            @RequestParam(required = false) String userChoice,
            HttpSession httpSession,
            Model model
    ) {
        if (Objects.isNull(httpSession.getAttribute("loggedUser"))){
            return "redirect:/";
        } else {
            User user = (User) httpSession.getAttribute("loggedUser");
            String result = "";
            String isAjaxHeader  = headers.get("x-requested-with");
            if(isAjaxHeader != null) {
                if(isAjaxHeader.equals("XMLHttpRequest")) {
                    GameStatistics stats = gameStatisticsService.findByUserId(user.getId());
                    Random random = new Random();
                    int randomChose = random.nextInt(3);
                    GameRockPaperSizer gameRockPaperSizer = new GameRockPaperSizer(userChoice, randomChose, stats);
                    gameRockPaperSizer.convertUserChoseInIntiger();
                    gameRockPaperSizer.seeIfWinRoLose();
                    result = gameRockPaperSizer.getResult();
                    gameStatisticsService.updateStatistics(stats);
                    model.addAttribute("result", result);
                    return "gameResult";
                }
            }
            model.addAttribute("result", result);
            return "home";
        }
    }
}
