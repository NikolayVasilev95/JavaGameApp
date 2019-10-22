package com.game.Gameproject.service.impl;

import com.game.Gameproject.domain.User;
import com.game.Gameproject.repository.UserRepository;
import com.game.Gameproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User createUser(User user) {
        return userRepository.save(user);
    }

    @Override
    public Optional<User> findUserByMailAndPassword(String email, String password){
        return userRepository.findByMailAndPassword(email, password);
    }

    @Override
    public List<User> findAllUsers(){
        return userRepository.findAll();
    }

    @Override
    public boolean existsByMail(String email) {
        return userRepository.existsByMail(email);
    }
}
