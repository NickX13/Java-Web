package com.ctgu.huawei.service;

import com.ctgu.huawei.pojo.Category;
import com.ctgu.huawei.pojo.Product;

import java.util.List;

public interface ProductService {
    void add(Product p);
    void delete(int id);
    void update(Product p);
    Product get(int id);
    List list(int cid);
    void setFirstProductImage(Product p);
    void fill(List<Category> cs);

    void fill(Category c);

    void fillByRow(List<Category> cs);

    List search(String name);
}