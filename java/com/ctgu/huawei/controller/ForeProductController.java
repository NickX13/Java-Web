package com.ctgu.huawei.controller;


import com.ctgu.huawei.mapper.ProductMapper;
import com.ctgu.huawei.pojo.OrderItem;
import com.ctgu.huawei.pojo.Product;
import com.ctgu.huawei.pojo.ProductImage;
import com.ctgu.huawei.service.OrderItemService;
import com.ctgu.huawei.service.ProductImageService;
import com.ctgu.huawei.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("")
public class ForeProductController {
    @Autowired
    ProductService productService;

    @Autowired
    ProductImageService productImageService;

    @Autowired
    OrderItemService orderItemService;
    @RequestMapping("showCommdity")
    public String showCommdity(Model model, @RequestParam("cid") int cid){
//        这里测试先写死，后改

        List<Product> products =  productService.list(cid);
        model.addAttribute("products", products);
        return "include/fore/commdity_show";
    }


    @RequestMapping("productDetail")
    public String produvtDetail(Model model, @RequestParam("pid") int pid){

        Product product = productService.get(pid);
        List<Product> products = new LinkedList<>();
        products.add(product);
        List<ProductImage> pics_detail = productImageService.list(pid, ProductImageService.type_detail);
        model.addAttribute("products", products);
        model.addAttribute("pics", pics_detail);
        return "include/fore/commdity_main";
    }

    @RequestMapping("search")
    public String search(HttpServletRequest request, Model model) {
        String name = request.getParameter("name");
        List<Product> products = productService.search(name);
        model.addAttribute("products", products);
        return "include/fore/commdity_show";
    }
}
