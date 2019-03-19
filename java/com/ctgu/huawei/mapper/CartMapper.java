package com.ctgu.huawei.mapper;

import com.ctgu.huawei.pojo.Cart;

import java.util.List;

public interface CartMapper {
    List<Cart> listAllInCart(int id);

    void insertCart(Cart cart);

    void deleteCart(int id);

    Cart selectByPidAndUid(int pid, int uid);

    void upadteNumById(int num, int id);
}
