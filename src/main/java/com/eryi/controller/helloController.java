package com.eryi.controller;

import com.eryi.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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

    @Autowired
    ArticleService articleService;

    @RequestMapping("/index")
    public ModelAndView index(){
        ModelAndView modelAndView=new ModelAndView("index");
        modelAndView.addObject("articles",articleService.queryAll());
        return modelAndView;
    }

    @RequestMapping("/hello")
    public ModelAndView hello(){
        ModelAndView modelAndView=new ModelAndView("hello");
        return modelAndView;
    }
}
