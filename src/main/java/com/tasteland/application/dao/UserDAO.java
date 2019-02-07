package com.tasteland.application.dao;

import com.tasteland.application.entity.User;


public interface UserDAO {

    User findByUserName(String userName);

    void save(User user);

}
