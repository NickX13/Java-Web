package com.ctgu.huawei.service;

import com.ctgu.huawei.pojo.UserInfo;

public interface UserInfoService {
    void add(UserInfo userInfo);
    void delete(int id);
    void update(UserInfo userInfo);
    UserInfo get(int uid);
}
