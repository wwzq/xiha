<%--
  Created by IntelliJ IDEA.
  User: 周强
  Date: 2019/5/10
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车主发布</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo.ico"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.picker.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.poppicker.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/mui.dtpicker.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mui.dtpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mui.picker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/mui.poppicker.js"></script>
</head>
<body>
<br>
<div class="mui-row">
    <div class="mui-col-xs-4" style="float: left">
        &nbsp;&nbsp;&nbsp;<span class="mui-icon mui-icon-arrowleft" style="font-size: 17px">首页</span>
    </div>
    <div class="mui-col-xs-4" style="text-align: center">
        <span>车主发布</span>
    </div>
    <div class="mui-col-xs-4">
    </div>
</div>
<br>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【出发】</span>
    </div>
    <div class="mui-col-xs-8" onclick="check(this)" area="" city="">
        点击选择城市
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【到达】</span>
    </div>
    <div class="mui-col-xs-8" onclick="check(this)" area="" city="">
        点击选择城市
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【路线】</span>
    </div>
    <div class="mui-col-xs-8" contenteditable="true">
        XX 出发, 途径 XX ，XX上高速，XX下高速，目的地XX
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【出发】</span>
    </div>
    <div class="mui-col-xs-8" onclick="selctTime(this)">
        点击选择出发时间
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【到达】</span>
    </div>
    <div class="mui-col-xs-8" onclick="selctTime(this)">
        点击选择预计到达时间
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【车型】</span>
    </div>
    <div class="mui-col-xs-8" contenteditable="true">
        例：别克英朗
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【余座】</span>
    </div>
    <div class="mui-col-xs-8">
        3座
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【A费】</span>
    </div>
    <div class="mui-col-xs-8">
        50元
    </div>
</div>
<hr>
<div class="mui-row">
    <div class="mui-col-xs-4">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span>【备注】</span>
    </div>
    <div class="mui-col-xs-8">
        顺路上下，预定后清电话确认！
    </div>
</div>
<hr>
<div class="mui-button-row">
    <button id="submit" type="button" class="mui-btn mui-btn-warning" style="width: 200px;height: 40px">发布出行信息</button>
</div>

<script>

    function selctTime(ev) {
        var date = new Date();
        var todate = new Date()
        todate.setDate(todate.getDate() + 4)
        var dtpicker = new mui.DtPicker({
            type: "datetime",//设置日历初始视图模式
            beginDate: date,//设置开始日期
            endDate: todate,//设置结束日期
            labels: ['年', '月', '日', '时', '分'],//设置默认标签区域提示语
            //时间/日期别名
        })
        dtpicker.show(function (e) {
            $(ev).html(e.text)
        })
    }

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
