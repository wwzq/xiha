package com.zzu.xiha;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.zzu.xiha.dao")
public class XihaApplication {

    public static void main(String[] args) {
        SpringApplication.run(XihaApplication.class, args);
    }

}
