package com.eryi.Mapper;

import com.eryi.pojo.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author ZouJiaNan
 * @version 1.0
 * @description
 * @date 2021/10/30 20:37
 */

@Repository
public interface ArticleMapper {
    void add(Article article);
    List<Article> queryAll();
    List<Article> queryByAuthor(String author);
    List<Article> queryByType(@Param("type") String Type,@Param("start")int start,@Param("end")int end);
    Article queryByFileId(@Param("file_id") String file_id);
}
