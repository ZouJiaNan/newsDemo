package com.eryi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.DateFormat;
import java.util.Date;

/**
 * @author ZouJiaNan
 * @version 1.0
 * @description
 * @date 2021/10/29 22:16
 */
@Controller
public class helloController {
    @RequestMapping("/hello")
    public String hello(Model m){
        m.addAttribute("now", DateFormat.getDateTimeInstance().format(new Date()));
        return "index";  //视图重定向hello.jsp
    }
}
