package com.game.Gameproject.repository;

import com.game.Gameproject.domain.GameStatistics;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface GameStatisticsRepository extends JpaRepository<GameStatistics, Long> {
    Optional<GameStatistics> findByUserId(Long userId);
    void deleteByUserId(Long userId);
}
