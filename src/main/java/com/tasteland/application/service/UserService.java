package com.tasteland.application.service;
import com.tasteland.application.entity.User;
import com.tasteland.application.entity.UserValidator;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(UserValidator user);


}
