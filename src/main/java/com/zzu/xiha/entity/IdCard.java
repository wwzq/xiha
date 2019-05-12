package com.zzu.xiha.entity;

public class IdCard {
    //id
    private Integer id;
    //身份证正面路径
    private String frontImgPath;
    //身份证反面路径
    private String reverseImgPath;
    //真实姓名
    private String realName;
    //身份证号
    private String idNumber;
    //用户
    private User user;

    public IdCard() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFrontImgPath() {
        return frontImgPath;
    }

    public void setFrontImgPath(String frontImgPath) {
        this.frontImgPath = frontImgPath;
    }

    public String getReverseImgPath() {
        return reverseImgPath;
    }

    public void setReverseImgPath(String reverseImgPath) {
        this.reverseImgPath = reverseImgPath;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
