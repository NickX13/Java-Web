package com.ctgu.huawei.service.impl;

import com.ctgu.huawei.mapper.UserInfoMapper;
import com.ctgu.huawei.pojo.UserInfo;
import com.ctgu.huawei.pojo.UserInfoExample;
import com.ctgu.huawei.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    UserInfoMapper userInfoMapper;
    @Override
    public void add(UserInfo userInfo) {
        userInfoMapper.insert(userInfo);
    }

    @Override
    public void delete(int id) {
        userInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void update(UserInfo userInfo) {
        userInfoMapper.updateByPrimaryKeySelective(userInfo);
    }

    @Override
    public UserInfo get(int uid) {
        UserInfoExample example = new UserInfoExample();
        example.createCriteria().andUidEqualTo(uid);
        List<UserInfo> uf =  userInfoMapper.selectByExample(example);
        if(uf.isEmpty())
            return null;
        return uf.get(0);
    }
}
