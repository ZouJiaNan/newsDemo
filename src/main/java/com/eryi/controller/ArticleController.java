package com.eryi.controller;

import com.eryi.pojo.Article;
import com.eryi.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.UUID;

/**
 * @author ZouJiaNan
 * @version 1.0
 * @description 文章管理
 * @date 2021/10/30 18:52
 */
@Controller
public class ArticleController {

    @Autowired
    ArticleService articleService;

    Date date;

    int count=0;

    @PostMapping("/upload")
    public String upload(@RequestParam("author")String author, @RequestParam("type") String type, @RequestParam("date") String date, @RequestParam("file") MultipartFile file){

        String file_id= UUID.randomUUID()+file.getOriginalFilename();
        Article article=new Article();
        article.setTitle(file.getOriginalFilename().split("\\.")[0]);
        article.setFile_id(file_id);
        article.setAuthor(author);
        article.setDate(date);
        article.setType(type);
        articleService.upload(article,file);
        return "upload";
    }

    @RequestMapping("/queryAll")
    public ModelAndView queryAll(){
        ModelAndView modelAndView=new ModelAndView("index");
        modelAndView.addObject("articles",articleService.queryAll());
        return modelAndView;
    }

    @GetMapping("/queryByAuthor")
    public ModelAndView queryByAuthor(@RequestParam("author") String author){
        ModelAndView modelAndView=new ModelAndView("index");
        modelAndView.addObject("articles",articleService.queryByAuthor(author));
        return modelAndView;
    }

    @GetMapping("/queryByType")
    public ModelAndView queryByType(@RequestParam("type") String type){
        ModelAndView modelAndView=new ModelAndView("index");
        modelAndView.addObject("articles",articleService.queryByType(type));
        return modelAndView;
    }

    @RequestMapping("/showArticle")
    public ModelAndView article(@RequestParam("file_id")String file_id){
        ModelAndView modelAndView=new ModelAndView("article");
        count++;
        if(count!=1&&(new Date().getTime()-date.getTime()<5000)){
            return null;
        }
        date=new Date();
        modelAndView.addObject("article",articleService.article(file_id));
        return modelAndView;
    }
}
