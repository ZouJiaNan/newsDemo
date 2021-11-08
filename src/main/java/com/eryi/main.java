package com.eryi;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * @author ZouJiaNan
 * @version 1.0
 * @description
 * @date 2021/10/29 22:25
 */
@SpringBootApplication
@MapperScan("com.eryi.Mapper")
public class main {
    public static void main(String[] args) {
        SpringApplication.run(main.class,args);
    }
}
