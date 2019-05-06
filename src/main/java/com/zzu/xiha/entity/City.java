package com.zzu.xiha.entity;

import com.alibaba.fastjson.annotation.JSONField;

public class City {
    //主键
    @JSONField(name = "value")
    private Integer id;
    //城市名字
    @JSONField(name = "text")
    private String name;
    //所属地区
    private Area area;

    public City() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    @Override
    public String toString() {
        return "City{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", area=" + area +
                '}';
    }
}
