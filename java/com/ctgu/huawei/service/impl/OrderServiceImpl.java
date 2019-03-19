package com.ctgu.huawei.service.impl;

import java.util.List;

import com.ctgu.huawei.mapper.OrderMapper;
import com.ctgu.huawei.pojo.Order;
import com.ctgu.huawei.pojo.OrderExample;
import com.ctgu.huawei.pojo.User;
import com.ctgu.huawei.service.OrderService;
import com.ctgu.huawei.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderMapper orderMapper;

    @Autowired
    UserService userService;

    @Override
    public void add(Order c) {
        orderMapper.insert(c);
    }

    @Override
    public void delete(int id) {
        orderMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void update(Order c) {
        orderMapper.updateByPrimaryKeySelective(c);
    }

    @Override
    public Order get(int id) {
        return orderMapper.selectByPrimaryKey(id);
    }

    public List<Order> list(){
        OrderExample example =new OrderExample();
        example.setOrderByClause("id desc");
        List<Order> result =orderMapper.selectByExample(example);
        setUser(result);
        return result;
    }


    public List<Order> getByUid(int uid) {
        OrderExample example = new OrderExample();
        example.createCriteria().andUidEqualTo(uid);
        List<Order> os=  orderMapper.selectByExample(example);
        return  os;
    }

    public void setUser(List<Order> os){
        for (Order o : os)
            setUser(o);
    }
    public void setUser(Order o){
        int uid = o.getUid();
        User u = userService.get(uid);
        o.setUser(u);
    }

}
