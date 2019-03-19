package com.ctgu.huawei.controller;

import com.ctgu.huawei.pojo.UserInfo;
import com.ctgu.huawei.service.UserInfoService;
import com.ctgu.huawei.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("")
public class UserInfoController {
    @Autowired
    UserInfoService userInfoService;
    @Autowired
    UserService userService;
    @RequestMapping("changeUserInfoOperation")
    public String changeUserInfoOperation(HttpServletRequest request){

        String userPhoneNum = request.getParameter("userPhoneNum");
        String userSex = request.getParameter("userSex");
        String userAddress = request.getParameter("UserAddress");
        //Float userMoney = Float.parseFloat(request.getParameter("UserMoney")) ;
        int uid =Integer.parseInt(request.getParameter("uid"));
        UserInfo userInfo =userInfoService.get(10);
        userInfo.setAddress(userAddress);
        userInfo.setSex(userSex);
       // userInfo.setMoney(userMoney);
        userInfo.setTelephone(userPhoneNum);
        userInfoService.update(userInfo);
        return "redirect: forehome";


    }
}
