package com.game.Gameproject.repository;

import com.game.Gameproject.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByMailAndPassword(String email, String password);

    boolean existsByMail(String email);
}
