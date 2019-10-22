package com.game.Gameproject;

import com.game.Gameproject.domain.GameStatistics;

public class GameRockPaperSizer {
    private String[] allChoice = {"rock", "paper", "sizer"};
    private String userChoiceString;
    private int userChoice;
    private int PcChose;
    private String result;

    private GameStatistics gameStatistics;

    public GameRockPaperSizer(String userChoiceString, int pcChose, GameStatistics gameStatistics) {
        this.userChoiceString = userChoiceString;
        PcChose = pcChose;
        this.gameStatistics = gameStatistics;
    }

    public String getUserChoice() {
        return userChoiceString;
    }

    public void setUserChoice(String userChoice) {
        this.userChoiceString = userChoice;
    }

    public int getPcChose() {
        return PcChose;
    }

    public void setPcChose(int PcChose) {
        this.PcChose = PcChose;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public void convertUserChoseInIntiger(){
        for (int i = 0; i < allChoice.length; i++){
            if (allChoice[i].equals(userChoiceString)){
                userChoice = i;
            }
        }
    }

    public void seeIfWinRoLose(){
        if((PcChose == 0 &&  userChoice == 1) || (PcChose == 1 &&  userChoice == 2) || (PcChose == 2 &&  userChoice == 0)){
            gameStatistics.setCountLost(gameStatistics.getCountLost()+1);
            result = "You lost";
        } else if ((PcChose == 1 &&  userChoice == 0) || (PcChose == 2 &&  userChoice == 1) || (PcChose == 0 &&  userChoice == 2)){
            gameStatistics.setCountWin(gameStatistics.getCountWin()+1);
            result = "You win";
        } else if (PcChose == userChoice) {
            gameStatistics.setCountDraw(gameStatistics.getCountDraw()+1);
            result = "Draw";
        }
        gameStatistics.setCountPlayGame(gameStatistics.getCountPlayGame()+1);
    }

    public GameStatistics gameStatistics(){
        return gameStatistics;
    }
    public void show(){
        System.out.println(PcChose);
        System.out.println(userChoice);
        System.out.println("Played Game: " + gameStatistics.getCountPlayGame() +
                ", All your wins: " + gameStatistics.getCountWin() + ", All your loses: " + gameStatistics.getCountLost() +
                ", All your draws: " + gameStatistics.getCountDraw());
    }
}
