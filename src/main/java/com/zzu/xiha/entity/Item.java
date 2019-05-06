package com.zzu.xiha.entity;

import java.util.Date;

public class Item {
    //id
    private Integer id;
    //下单时间
    private Date addTime;
    //出发时间
    private Date startTime;
    //到达时间
    private Date arriveTime;
    //车主
    private User car;
    //乘客
    private User user;

    public Item() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getArriveTime() {
        return arriveTime;
    }

    public void setArriveTime(Date arriveTime) {
        this.arriveTime = arriveTime;
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
}
