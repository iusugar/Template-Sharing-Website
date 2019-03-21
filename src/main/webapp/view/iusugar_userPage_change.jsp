<%--
  Created by IntelliJ IDEA.
  User: Ming
  Date: 2019/1/4
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/icon/iu.ico" type="image/x-icon" />

    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript" charset="UTF-8"></script>
    <meta charset="UTF-8">
    <title>个人中心 - iuSugar</title>
    <style>
        *{
            border: 0;
            font: inherit;
            vertical-align: baseline;
            text-align: left;
            margin: 0;
            padding: 0;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        body[version="v1.0"] li {
            list-style: none;
        }
        li {
            list-style: none;
        }
        ol, ul {
            list-style: none;
        }
        .editContent{
            background: #fff;
            width: 100%;
            height: auto;
            padding: 30px;
        }
        .editContent .editName {
            font-size: 16px;
            color: #595959;
        }
        .editContent .editRow {
            width: 100%;
            height: auto;
        }
        .editContent .editRow .qv-ul {
            width: 100%;
            height: auto;
        }
        .editContent .editRow .qv-ul li {
            width: 100%;
            height: auto;
            margin-top: 30px;
            line-height: 40px;
        }
        .editContent .editRow .qv-ul li:after{
            content: '';
            clear: both;
            display: block;
            font-size: 0;
        }
        .editContent .editRow .qv-ul li label {
            font-size: 14px;
            color: #606266;
            float: left;
            display: block;
            margin-right: 25px;
            width: 45px;
        }
        .updated{
            display: block;
            width: 300px;
            height: 40px;
            float: left;
        }
        .input-container{
            position: relative;
            font-size: 14px;
            display: inline-block;
            width: 100%;

        }
        .input__inner {
            -webkit-appearance: none;
            background-color: #fff;
            background-image: none;
            border-radius: 4px;
            border: 1px solid #dcdfe6;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            color: #606266;
            display: inline-block;
            font-size: inherit;
            height: 40px;
            line-height: 40px;
            outline: 0;
            padding: 0 15px;
            -webkit-transition: border-color .2s cubic-bezier(.645,.045,.355,1);
            transition: border-color .2s cubic-bezier(.645,.045,.355,1);
            width: 100%;
        }

        .detailBtn-fav {
            width: 120px;
            text-align: center;
            line-height: 40px;
            height: 40px;
            margin-top: 20px;
            margin-left: 10px;
            cursor: pointer;
            -webkit-transition: all .25s;
            -moz-transition: all .25s;
            transition: all .25s;
            background-color: #edfff4;
            border: 1px solid #10c55b;
            color: #10c55b;
            -webkit-border-radius: 4px;
            border-radius: 4px;
        }

        .detailBtn-down:hover, .detailBtn-fav:hover {
            box-shadow: 0 2px 8px 0 rgba(0, 0, 0, .15);
        }

        .warning-message{
            color: red;
            font-size: 12px;
            margin-left:10px;
            display: none;
            line-height: 12px;
        }
    </style>
    <script>
        $(function () {
            $.ajax({
                url:"/template_shop/personal/get_page",
                type:'get',
                contentType: "application/x-www-form-urlencoded;charset=utf-8",
                dataType:"JSON",
                success:function (res) {
                    console.log(res.account);
                    console.log("这是name"+res.name);
                    console.log("这是province"+res.province);
                    $("#username").val(res.name);
                },
                error:function (res) {
                    alert("出现错误了");
                }
            })
        })
    </script>
</head>
<body>
<div class="editContent">
    <div class="editName">个人信息</div>
    <div class="editRow">
        <ul class="qv-ul">
            <li>
                <label>昵称</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="请输入昵称" class="input__inner" id="username">
                    </div>
                </div>
            </li>
            <li>
                <label>生日</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="请输入生日日期" class="input__inner" id="birthday">
                    </div>
                </div>
                <span class="warning-message" id="dateWarning">请填写正确的日期</span>
            </li>
            <li>
                <label>手机号</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="手机号" class="input__inner" id="phone">
                    </div>
                </div>
                <span class="warning-message" id="phoneWarning">请填写正确的手机号</span>
            </li>
            <li>
                <label>QQ</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="请输入QQ" class="input__inner">
                    </div>
                </div>
            </li>
            <li>
                <label>E-mail</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="请输入E-mail" class="input__inner" id="mail">
                    </div>
                </div>
                <span class="warning-message" id="mailWarning">请填写正确的邮箱</span>
            </li>
            <li>
                <label>介绍</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="请输入个人介绍" class="input__inner">
                    </div>
                </div>
            </li>
            <li>
                <label>省</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="省" class="input__inner">
                    </div>
                </div>
            </li>
            <li>
                <label>市</label>
                <div class="updated">
                    <div class="input-container">
                        <input type="text" autocomplete="off" maxlength="20" placeholder="市" class="input__inner">
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div>
        <div class="detailBtn-fav" id="submitBtn">
            确认提交
        </div>
    </div>
</div>
<script>
    //判断是否为日期格式
    var judgeDate = function (str) {
        var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/;
        var r=str.match(reg);
        if(r===null){
            return false;
        }else{
            return true;
        }
    };

    //判断是否为日期格式
    var judgePhone = function (str) {
        var reg = /^[1][3,4,5,7,8][0-9]{9}$/;
        var r=str.match(reg);
        if(r===null){
            return false;
        }else{
            return true;
        }
    };

    //判断是否为邮箱格式
    var judgeMail = function (str) {
        var reg = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
        var r=str.match(reg);
        if(r===null){
            return false;
        }else{
            return true;
        }
    };

    window.onload = function () {
        var birthdayInput = document.getElementById('birthday');//生日选择框
        var phone = document.getElementById('phone');//电话选择框
        var mailInput = document.getElementById('mail');//电子邮件选择框
        var subBtn = document.getElementById('submitBtn');//提交按钮

        var dateWarning = document.getElementById('dateWarning');//日期提示
        var phoneWarning = document.getElementById('phoneWarning');//手机提示
        var mailWarning = document.getElementById('mailWarning');//手机提示

        subBtn.onclick=function () {
            var dateBolen = judgeDate(birthdayInput.value);//是否为正确的日期
            var phoneBolen = judgePhone(phone.value);//是否为正确的手机号
            var mailBolen = judgeMail(mailInput.value);//是否为正确的邮箱地址

            console.log(dateBolen,phoneBolen,mailBolen);

            if((!dateBolen)||(!phoneBolen)||(!mailBolen)){//如果有一项不正确
                alert("请填写正确的信息");
                if(!dateBolen){
                    dateWarning.style.display="inline";
                }else{
                    dateWarning.style.display="none";
                }
                if(!phoneBolen){
                    phoneWarning.style.display="inline";
                }else{
                    phoneWarning.style.display="none";
                }
                if(!mailBolen){
                    mailWarning.style.display="inline";
                }else{
                    mailWarning.style.display="none";
                }
            }else{//如果都正确
                dateWarning.style.display="none";
                phoneWarning.style.display="none";
                mailWarning.style.display="none";
                alert("提交成功！")
            }


        };

    };
</script>
</body>
</html>
