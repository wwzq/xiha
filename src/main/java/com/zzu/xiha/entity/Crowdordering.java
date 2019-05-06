package com.zzu.xiha.entity;

import java.util.Date;

public class Crowdordering {
    //id
    private Integer id;
    //出发城市
    private City beCity;
    //到达城市
    private City destination;
    //路线描述
    private String courseDescription;
    //出发时间
    private Date startTime;
    //预计到达时间
    private Date arriveTime;
    //汽车型号
    private String vehicleModel;
    //剩余座位
    private Integer remanentSeat;
    //拼单价格
    private Double price;
    //备注
    private String comment;
    //车主
    private User owner;

    public Crowdordering() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public City getBeCity() {
        return beCity;
    }

    public void setBeCity(City beCity) {
        this.beCity = beCity;
    }

    public City getDestination() {
        return destination;
    }

    public void setDestination(City destination) {
        this.destination = destination;
    }

    public String getCourseDescription() {
        return courseDescription;
    }

    public void setCourseDescription(String courseDescription) {
        this.courseDescription = courseDescription;
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

    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public Integer getRemanentSeat() {
        return remanentSeat;
    }

    public void setRemanentSeat(Integer remanentSeat) {
        this.remanentSeat = remanentSeat;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }
}
