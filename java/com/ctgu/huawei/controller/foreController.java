package com.ctgu.huawei.controller;

import com.ctgu.huawei.pojo.*;
import com.ctgu.huawei.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("")
public class foreController {
    @Autowired
    UserInfoService userInfoService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;
    @Autowired
    ProductImageService productImageService;
    @Autowired
    PropertyValueService propertyValueService;
    @Autowired
    OrderService orderService;
    @Autowired
    OrderItemService orderItemService;
    @RequestMapping("forehome")
    public String home(Model model){
        List<Category> cs = categoryService.list();
        productService.fill(cs);
        productService.fillByRow(cs);
        model.addAttribute("cs",cs);
        return "fore/home";
    }
    @RequestMapping("listOrder")
    public String list_order(int uid,Model model){
        List<Order> os = orderService.getByUid(uid);
        System.out.println(os.size());
        model.addAttribute("os",os);
        return "include/fore/order";
    }
    @RequestMapping("createOrder")
    public String create_order(int uid){
        List<OrderItem> ois = orderItemService.getByUid(uid);
        //User user = userService.get(uid);
        UserInfo userInfo = userInfoService.get(uid) ;
        Order order = new Order();
        order.setStatus("待发货");
        int number=0;
        float money =0;
        for(OrderItem oi:ois){
            number+=oi.getNumber();
            money+=oi.getNumber()*(productService.get(oi.getPid()).getPromotePrice());
            orderItemService.delete(oi.getId());
        }
        order.setUid(uid);
        order.setCreateDate(new Date());
        order.setPayDate(new Date());
        order.setTotal(money);
        order.setTotalNumber(number);
        order.setAddress(userInfo.getAddress());
        orderService.add(order);
        return "redirect:listOrder?uid="+uid;
    }


            }
