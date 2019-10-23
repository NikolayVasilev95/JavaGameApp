package com.game.Gameproject.service.impl;

import com.game.Gameproject.domain.GameStatistics;
import com.game.Gameproject.repository.GameStatisticsRepository;
import com.game.Gameproject.service.GameStatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GameStatisticsServiceImpl implements GameStatisticsService {

    @Autowired
    GameStatisticsRepository gameStatisticsRepository;

    @Override
    public GameStatistics findByUserId (Long userId){
        return gameStatisticsRepository.findByUserId(userId).orElseThrow(() -> new RuntimeException("Statistics not found"));
    }

    @Override
    public List<GameStatistics> findAllGameStatistics(){
        return gameStatisticsRepository.findAll();
    }

    @Override
    public GameStatistics updateStatistics(GameStatistics gameStatistics) {
        return gameStatisticsRepository.save(gameStatistics);
    }
}
