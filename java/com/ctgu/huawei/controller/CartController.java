package com.ctgu.huawei.controller;

import com.ctgu.huawei.mapper.OrderItemMapper;
import com.ctgu.huawei.pojo.Cart;
import com.ctgu.huawei.pojo.OrderItem;
import com.ctgu.huawei.pojo.OrderItemExample;
import com.ctgu.huawei.pojo.Product;
import com.ctgu.huawei.service.CartService;
import com.ctgu.huawei.service.OrderItemService;
import com.ctgu.huawei.service.ProductService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.support.HttpRequestHandlerServlet;

import javax.servlet.http.HttpServlet;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("")
public class CartController {

    @Autowired
    CartService cartService;
    @Autowired
    OrderItemMapper orderItemMapper;
    @Autowired
    ProductService productService;
    @Autowired
    OrderItemService orderItemService;
    @RequestMapping("listCart")
    public String listCart(Model model ,int uid){
        List<OrderItem> ois = orderItemService.getByUid(uid);
        model.addAttribute("ois",ois);
        float total_price = 0;
        for(OrderItem oi:ois){
            Product p = productService.get(oi.getPid());
            float current_price =oi.getNumber()*p.getPromotePrice();
            total_price+=current_price;
        }
        model.addAttribute("total_price",total_price);
//        List<Cart> carts =  cartService.list(1);
//        List<Product> products = new ArrayList<>();
//        for(int i = 0; i < carts.size(); i++){
//            Cart cart = carts.get(i);
//            System.out.println(cart.getPid());
//            int pid = cart.getPid();
//            Product product = productService.get(pid);
//            products.add(product);
//        }
//        System.out.println(carts.size());
//        System.out.println(products.size());
//        model.addAttribute("carts", carts);
//        model.addAttribute("products", products);
        return "include/fore/cart";
    }

    @RequestMapping("deleteCart")
    public String delete(
            @RequestParam("id") int id,int uid
    ){
        orderItemService.delete(id);
        return "redirect: listCart?uid="+uid;
    }
    @RequestMapping("update_oi_number")
    @ResponseBody
    public String update_oi(int id,int number,int uid,Model model){

                OrderItem oi = orderItemService.get(id);
                oi.setNumber(number);
                orderItemService.update(oi);
        List<OrderItem> ois = orderItemService.getByUid(uid);
        float total_price = 0;
        for(OrderItem o:ois){
            Product p = productService.get(o.getPid());
            float current_price =o.getNumber()*p.getPromotePrice();
            total_price+=current_price;
        }

                return String.format("%.2f", total_price);
    }//create_items?pid=40&number=5&uid=10
    @RequestMapping("create_items")
    @ResponseBody
    public String add_to_cart(int pid,int number,int uid){
        OrderItem orderItem = new OrderItem();
        orderItem.setPid(pid);
        orderItem.setNumber(number);
        orderItem.setUid(uid);
        OrderItemExample example = new OrderItemExample();
        example.createCriteria().andPidEqualTo(pid).andUidEqualTo(uid);
        List<OrderItem> orderItems =orderItemMapper.selectByExample(example);
        if(orderItems.isEmpty())
        orderItemService.add(orderItem);
        else{
            System.out.println(orderItems.get(0).getNumber());
            System.out.println(number);
            orderItems.get(0).setNumber(orderItems.get(0).getNumber()+number);
            orderItemService.update(orderItems.get(0));}
        return "Add to cart successfully!";
    }

  //  @RequestMapping("insertIntoCart")
 //   public String insert(){
//        需要3个参数，pid uid num
//        uid可以在session里取

  //      cartService.select();       //首先要根据pid 和 uid判断是否在存在与cart表，如果是就仅更新num
   // }

}
