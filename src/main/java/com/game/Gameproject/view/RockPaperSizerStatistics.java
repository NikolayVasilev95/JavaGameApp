package com.game.Gameproject.view;

import com.game.Gameproject.domain.GameStatistics;
import com.game.Gameproject.service.GameStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

@Controller
public class RockPaperSizerStatistics {
    @Autowired
    GameStatisticsService gameStatisticsService;

    @RequestMapping(method = RequestMethod.GET, value = "/RockPaperSizerStatistics")
    public String rockPaperSizerStatistics(HttpSession httpSession, Model model) {
        if (Objects.isNull(httpSession.getAttribute("loggedUser"))){
            return "redirect:/";
        } else {
            List<GameStatistics> allStatistics = gameStatisticsService.findAllGameStatistics();
            model.addAttribute("allStatistics", allStatistics);
            return "RockPaperSizerStatistics";
        }
    }
}
