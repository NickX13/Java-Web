package com.ctgu.huawei.service;

import com.ctgu.huawei.pojo.Order;
import org.springframework.stereotype.Service;

import java.util.List;
public interface OrderService {
 
    String waitPay = "waitPay";
    String waitDelivery = "waitDelivery";
    String waitConfirm = "waitConfirm";
    String waitReview = "waitReview";
    String finish = "finish";
    String delete = "delete";
 
    void add(Order c);
 
    void delete(int id);
    void update(Order c);
    Order get(int id);
    List list();
    List getByUid(int uid);
}