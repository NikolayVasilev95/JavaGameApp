package com.game.Gameproject.domain;

import com.game.Gameproject.domain.User;

import javax.persistence.*;

@Entity
@Table(name = "statistics")
public class GameStatistics {

    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "statistics_id_generator")
    @SequenceGenerator(name = "statistics_id_generator", sequenceName = "statistics_id_seq", allocationSize = 1)
    @Id
    private Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    private int countLost = 0;
    private int countWin = 0;
    private int countDraw = 0;
    private int countPlayGame = 0;

    public GameStatistics(){}

    public GameStatistics(User user){
        this();
        this.user = user;
    }

    public int getCountLost() {
        return countLost;
    }

    public void setCountLost(int countLost) {
        this.countLost = countLost;
    }

    public int getCountWin() {
        return countWin;
    }

    public void setCountWin(int countWin) {
        this.countWin = countWin;
    }

    public int getCountDraw() {
        return countDraw;
    }

    public void setCountDraw(int countDraw) {
        this.countDraw = countDraw;
    }

    public int getCountPlayGame() {
        return countPlayGame;
    }

    public void setCountPlayGame(int countPlayGame) {
        this.countPlayGame = countPlayGame;
    }

    public User getUser() {
        return user;
    }
}
