package com.ctgu.huawei.service.impl;

import com.ctgu.huawei.mapper.CartMapper;
import com.ctgu.huawei.pojo.Cart;
import com.ctgu.huawei.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    CartMapper cartMapper;

    @Override
    public List<Cart> list(int id) {
        return cartMapper.listAllInCart(id);
    }

    @Override
    public void insert(Cart cart) {
        cartMapper.insertCart(cart);
    }

    @Override
    public void delete(int id) {
        cartMapper.deleteCart(id);
    }

    @Override
    public Cart select(int pid, int uid) {
        return cartMapper.selectByPidAndUid(pid, uid);
    }

    @Override
    public void update(int num, int id) {
        cartMapper.upadteNumById(num, id);
    }


}
