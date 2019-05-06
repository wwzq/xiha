<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 周强
  Date: 2019/4/15
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>嘻哈出行</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo.ico"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.picker.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.poppicker.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mui.picker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mui.poppicker.js"></script>
</head>
<body>
<div>
    <img src="${pageContext.request.contextPath}/img/index_top.jpg" style="width: 100%;height: 200px">
</div>
<div style="margin-top: 20px" class="mui-row">
    <div class="mui-col-xs-4">
        <span class="mui-icon mui-icon-location" style="font-size: 20px"/>出发城市
    </div>
    <div class="mui-col-xs-2"></div>
    <div class="mui-col-xs-6">
        <button class="mui-btn mui-btn-primary" onclick="check(this)" area="" city="">请选择出发城市</button>
    </div>
    <div class="mui-col-xs-2"></div>

    <br><br>
    <div class="mui-row">
        <div class="mui-col-xs-4">
            <span class="mui-icon mui-icon-paperplane" style="font-size: 20px"/>到达城市
        </div>
        <div class="mui-col-xs-2"></div>
        <div class="mui-col-xs-6">
            <button class="mui-btn mui-btn-success" onclick="check(this)" area="" city="">请选择到达城市</button>
        </div>
        <div class="mui-col-xs-2"></div>
    </div>
    <br>
    <div style="text-align: center">
        <button type="button" class="mui-btn mui-btn-warning" style="width: 200px;">查询车主</button>
    </div>
    <br>
    <div class="mui-row">
        <div class="mui-col-xs-1"></div>
        <div class="mui-col-xs-5">
            <span class="mui-icon mui-icon-map" style="font-size: 20px;float: left">热门路线</span>
        </div>
        <div class="mui-col-xs-5">
            <span class="mui-icon mui-icon-help" style="font-size: 20px;float: right">其他路线？</span>
        </div>
        <div class="mui-col-xs-1"></div>

    </div>
</div>
<script>
    function check(ev) {
        var picker = new mui.PopPicker({
            layer: 2
        });

        $.ajax({
            url: "${pageContext.request.contextPath}/index/index",
            dataType: 'json',
            success: function (data) {
                picker.setData(data)
                picker.pickers[0].setSelectedIndex(0);
                picker.pickers[0].setSelectedIndex(0);
                picker.show(function (SelectedItem) {
                    $(ev).html(SelectedItem[0].text + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + SelectedItem[1].text)
                    $(ev).attr("area", SelectedItem[0].value)
                    $(ev).attr("city", SelectedItem[1].value)
                })
            }
        })
    }

</script>
</body>
</html>