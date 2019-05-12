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
</head>
<body>
<div>
    <div class="mui-text-center" style="height: 150px;line-height: 200px">
        <span class="mui-h2">登录</span>
    </div>

    <div class="mui-row">
        <div class="mui-col-xs-1"></div>
        <div class="mui-col-xs-10">
            <form class="mui-input-group" style="border-radius: 10px">
                <div class="mui-input-row">
                    <label>用户名</label>
                    <input id="username" type="text" class="mui-input-clear" placeholder="请输入手机号或邮箱">
                </div>
                <div class="mui-input-row">
                    <label>密码</label>
                    <input id="password" type="password" class="mui-input-password" placeholder="请输入密码">
                </div>
                <br>
                <div class="mui-button-row">
                    <button id="submit" type="button" class="mui-btn mui-btn-primary" style="width: 100px">登录</button>
                </div>
            </form>
        </div>
    </div>
    <div class="mui-card-footer" style="height: 300px">
        <a href="#" style="margin: auto;line-height: 300px">忘记密码？</a>
    </div>
</div>
<script>
    // //传入toggle参数，用户无需关心当前是显示还是隐藏状态，mui会自动识别处理；
    // mui('#sheet1').popover('toggle');
    $(function () {
        $("#username").blur(checkname = function () {
            var username = $("#username").val()
            if (/^1[34578]\d{9}$/.test(username)) {
                return true
            } else {
                mui.toast('用户名格式不正确！', {duration: 'long', type: 'div'})
                $("#username").val("")
                return false
            }
        })

        $("#password").blur(checkpwd = function () {
            var pwd = $("#password").val()
            if (/^$/.test(pwd)) {
                mui.toast('密码不能为空！', {duration: 'long', type: 'div'})
                return false
            } else {
                return true
            }
        })

        $("#submit").click(function () {
            if (!checkname() || !checkpwd()) {
                return
            }
            var username = $("#username").val()
            var password = $("#password").val()
            $.ajax({
                type: "get",
                url: "${pageContext.request.contextPath}/user/login",
                data: "userName=" + username + "&password=" + password,
                dataType: "json",
                success: function (data) {
                    if (data) {

                    } else {
                        mui.toast('用户名或密码错误！', {duration: 'long', type: 'div'})
                    }
                }
            })
        })
    })
</script>
</body>
</html>