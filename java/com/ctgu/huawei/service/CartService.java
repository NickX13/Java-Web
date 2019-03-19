package com.ctgu.huawei.service;

import com.ctgu.huawei.pojo.Cart;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface CartService {

    List<Cart> list(int id);

    void insert(@Param("cart") Cart cart);

    void delete(int id);

    Cart select(int pid, int uid);

    void update(int num, int id);
}
