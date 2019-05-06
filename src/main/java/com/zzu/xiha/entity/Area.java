package com.zzu.xiha.entity;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.List;
import java.util.Objects;

public class Area {
    //id
    @JSONField(name = "value")
    private Integer id;
    //所属地区名字
    @JSONField(name = "text")
    private String areaName;
    //下辖城市
    @JSONField(name = "children")
    private List<City> cities;

    public Area() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public List<City> getCities() {
        return cities;
    }

    public void setCities(List<City> cities) {
        this.cities = cities;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Area)) return false;
        Area area = (Area) o;
        return getId().equals(area.getId()) &&
                getAreaName().equals(area.getAreaName()) &&
                getCities().equals(area.getCities());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getAreaName(), getCities());
    }

    @Override
    public String toString() {
        return "Area{" +
                "id=" + id +
                ", areaName='" + areaName + '\'' +
                ", cities=" + cities +
                '}';
    }
}
