<%--
  Created by IntelliJ IDEA.
  User: 周强
  Date: 2019/5/8
  Time: 14:21
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
        <span class="mui-h2">注册</span>
    </div>

    <div class="mui-row">
        <div class="mui-col-xs-1"></div>
        <div class="mui-col-xs-10">
            <form class="mui-input-group" style="border-radius: 10px" onsubmit="return sub()" action="" method="post">
                <div class="mui-input-row">
                    <label>用户名</label>
                    <input id="username" type="text" class="mui-input-clear" placeholder="请输入手机号或邮箱">
                </div>
                <div class="mui-input-row">
                    <label>密码</label>
                    <input id="password" type="password" class="mui-input-password" placeholder="请输入密码">
                </div>
                <div class="mui-input-row">
                    <label>确认密码</label>
                    <input id="repassword" type="password" class="mui-input-password" placeholder="请输入密码">
                </div>
                <div class="mui-input-row">
                    <label>验证码</label>
                    <input id="code" type="text" class="mui-input-password" placeholder="请输入验证码">
                </div>
                <div class="mui-button-row">
                    <button id="codebtn" type="button" class="mui-btn mui-btn-warning">发送验证码</button>
                </div>
                <br>
                <div class="mui-button-row">
                    <button id="submit" type="submit" class="mui-btn mui-btn-primary">确认</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="mui-btn mui-btn-danger">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#username").blur(checkname = function () {
            var username = $("#username").val()
            if (/^1[34578]\d{9}$/.test(username)) {
                return true
            } else {
                mui.toast('用户名必须为手机号！', {duration: 'long', type: 'div'})
                $("#username").val("")
                return false
            }
        })
        $("#password").blur(checkpwd = function () {
            var pwd = $("#password").val()
            if (/^(?:\d+|[a-zA-Z]+|[!@#$%^&*]+){6,18}$/.test(pwd)) {
                return true
            } else {
                mui.toast('密码长度只能为6到18位！', {duration: 'long', type: 'div'})
                $("#password").val("")
                return false
            }
        })
        $("#repassword").blur(recheckpwd = function () {
            var pwd = $("#password").val()
            var repwd = $("#repassword").val()
            if (repwd == pwd) {
                return true
            } else {
                mui.toast('两次密码不一致！', {duration: 'long', type: 'div'})
                $("#repassword").val("")
                return false
            }
        })
        $("#code").blur(checkcode = function () {
            var code = $("#code").val()
            if (/^[0-9]{4,4}$/.test(code)) {
                return true
            } else {
                mui.toast('验证码不正确！', {duration: 'long', type: 'div'})
                $("#code").val("")
                return false
            }
        })
        var second = 60
        var num = 0
        $("#codebtn").click(function () {
            if (checkname()) {
                var email = $("#username").val();

                $("#codebtn").html("60s后可再次发送")
                $("#codebtn").prop("disabled", true)
                num = window.setInterval(deng, 1000)
            }
        })

        function deng() {
            second--
            $("#codebtn").html(second + "s后可再次发送")
            if (second == 0) {
                second = 60
                window.clearInterval(num)
                $("#codebtn").html("重新发送验证码")
                $("#codebtn").prop("disabled", false)
            }
        }
    })

    function sub() {
        return checkname() && checkpwd() && recheckpwd() && checkcode()
    }
</script>
</body>
</html>
