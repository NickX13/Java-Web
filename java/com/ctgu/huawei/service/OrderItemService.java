package com.ctgu.huawei.service;

import com.ctgu.huawei.pojo.Order;
import com.ctgu.huawei.pojo.OrderItem;

import java.util.List;

public interface OrderItemService {
      
    void add(OrderItem c);
 
    void delete(int id);
    void update(OrderItem c);
    OrderItem get(int id);
    List list();
    List getByUid(int uid);
    void fill(List<Order> os);
 
    void fill(Order o);
 
}