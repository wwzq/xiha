package com.zzu.xiha.entity;

import java.util.Date;

public class Advise {
    //id
    private Integer id;
    //评论内容
    private String advise;
    //评论时间
    private Date createDate;
    //评论人
    private User user;

    public Advise() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdvise() {
        return advise;
    }

    public void setAdvise(String advise) {
        this.advise = advise;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
