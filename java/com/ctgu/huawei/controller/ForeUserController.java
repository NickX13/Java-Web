package com.ctgu.huawei.controller;

import com.ctgu.huawei.mapper.UserMapper;
import com.ctgu.huawei.pojo.OrderItem;
import com.ctgu.huawei.pojo.User;
import com.ctgu.huawei.pojo.UserInfo;
import com.ctgu.huawei.service.OrderItemService;
import com.ctgu.huawei.service.UserInfoService;
import com.ctgu.huawei.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
import java.util.List;

@Controller
@RequestMapping("")
public class ForeUserController {

    @Autowired
    UserService userService;
    @Autowired
    UserInfoService userInfoService;
    @Autowired
    OrderItemService orderItemService;
    @RequestMapping("login")
    public String login(){

        return "include/fore/login";
    }

    @RequestMapping("loggout")
    public String loggout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "redirect:forehome";
    }
    @RequestMapping("loginOperation")
    public String loginOperation( HttpServletRequest request,Model model){
        String username = request.getParameter("userAccount");
        String password = request.getParameter("password");
        User user = userService.login(username);
        request.setAttribute("user",user);

        if(user.getPassword().equals(password)){
            if (user.getGrants().equals(0)){
                return "admin/listCategory";
            }else
                request.getSession().setAttribute("user", user);
                UserInfo userInfo = userInfoService.get(user.getId());
                model.addAttribute("uf",userInfo);
                List<OrderItem> ois = orderItemService.getByUid(user.getId());
                model.addAttribute("ois",ois);
                return "redirect:forehome";
        }else
            JOptionPane.showMessageDialog(null, "密码错误，请重新输入", "错误", JOptionPane.ERROR_MESSAGE);
            return "redirect:login";

    }

    @RequestMapping("changeUserInfo")
    public String changeUserInfo(Model model, int uid){
        UserInfo userInfo =userInfoService.get(uid);
        model.addAttribute("uf",userInfo);
        return "include/fore/changeUserInfo";
    }





    @RequestMapping("userRegister")
    public String userRegister(){

        return "include/fore/register";
    }

    @RequestMapping("userRegisterOperation")
    public String userRegisterOperation(HttpServletRequest request,Model model){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String cPassw = request.getParameter("checkPassword");
        if(username.equals("")| password.equals("") | cPassw.equals("")){
            JOptionPane.showMessageDialog(null, "请填满所有信息", "错误", JOptionPane.ERROR_MESSAGE);
            return "redirect: userRegister";
        }else {
            if(password.equals(cPassw)){
                User user = new User();
                user.setName(username);
                user.setPassword(password);
                user.setGrants(1);
                userService.add(user);
                int id =user.getId();
                UserInfo userInfo = new UserInfo();
                userInfo.setUid(id);
                userInfoService.add(userInfo);
                model.addAttribute("uf",userInfo);
                return "redirect: login";
            }else{
                JOptionPane.showMessageDialog(null, "两次密码不相同", "错误", JOptionPane.ERROR_MESSAGE);
                return "redirect: userRegister";
            }
        }
    }
}
