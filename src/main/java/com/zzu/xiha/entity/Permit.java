package com.zzu.xiha.entity;

public class Permit {
    //id
    private Integer id;
    //行驶证图片路径
    private String ImgPath;
    //用户
    private User user;

    public Permit() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgPath() {
        return ImgPath;
    }

    public void setImgPath(String imgPath) {
        ImgPath = imgPath;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
