package com.tasteland.application.service;
import com.tasteland.application.entity.user.User;
import com.tasteland.application.entity.user.UserValidator;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(UserValidator user);


}
