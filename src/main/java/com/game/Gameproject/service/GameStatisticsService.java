package com.game.Gameproject.service;

import com.game.Gameproject.domain.GameStatistics;

import java.util.List;

public interface GameStatisticsService {
    GameStatistics findByUserId(Long userId);

    List<GameStatistics> findAllGameStatistics();

    GameStatistics updateStatistics(GameStatistics gameStatistics);
}
