package com.zzu.xiha.entity;

import java.util.Date;

public class Travle {
    //id
    private Integer id;
    //车主
    private User car;
    //用户
    private User user;
    //时间
    private Date addTime;
    //描述
    private String description;
    //状态
    private Integer status;

    public Travle() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getCar() {
        return car;
    }

    public void setCar(User car) {
        this.car = car;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
