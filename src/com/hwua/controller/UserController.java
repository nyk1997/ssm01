package com.hwua.controller;

import com.hwua.entity.User;
import com.hwua.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

//控制层
@Controller
@RequestMapping("/user")
public class UserController {

    public UserController() {
        System.out.println("创建了一个UserController");
    }

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String login(String user_username, String user_password,
                        String auth, HttpSession hs){
        //从会话中获取随机数
        String rand = (String)hs.getAttribute("rand");
        if (rand.equalsIgnoreCase(auth)){
            String info = userService.selectUserByUsername(user_username,user_password);
        if(info.equals("登陆成功")){
            hs.setAttribute("user_username",user_username);
        }

            return info;
        }else{
            return "验证码错误";
        }

    }

    @RequestMapping(value = "/register",produces = "text/html;charset=UTF-8")
    public String register(String userName,String passWord,Integer sex,String birthday,String identity,String email,String mobile,String address){
        User user = new User(null,userName,passWord,sex,birthday,identity,email,mobile,address);
        int number = userService.insertUser(user);
        if(number==1){
            return "login";
        }else{
            return "register";
        }

    }

@RequestMapping(value="/logout",produces="text/html;charset=UTF-8")
@ResponseBody
public String logout(HttpSession hs) {

        hs.setAttribute("user_username",null);
       //注销hs.removeAttribute("user_username");
        return "注销成功";
}
}





