package com.ctgu.huawei.service;

import com.ctgu.huawei.pojo.User;

import java.util.List;

public interface UserService {
    void add(User c);
    void delete(int id);
    void update(User c);
    User get(int id);
    List list();
    User login(String username);
}