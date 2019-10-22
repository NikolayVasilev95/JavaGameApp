package com.game.Gameproject.service;

import com.game.Gameproject.domain.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    User createUser(User user);

    Optional<User> findUserByMailAndPassword(String email, String password);

    List<User> findAllUsers();

    boolean existsByMail(String email);
}
