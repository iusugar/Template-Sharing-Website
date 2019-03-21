<%--
  Created by IntelliJ IDEA.
  User: 73180
  Date: 2019/01/05
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>艾优苏格_专注高校演示设计</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/icon/iu.ico" type="image/x-icon" />
    <link href="//at.alicdn.com/t/font_762060_y447sdsvqr.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/detail.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/navbar.css" type="text/css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript"></script>
</head>
<body>
<nav class="navbar">
    <div class="brand">
        <a href="/template_shop/init/home"><img src="${pageContext.request.contextPath}/resources/images/logo/iusugarLOGO.png"></a>
    </div>
    <div class="vertical-line"></div>
    <div class="slogan">
        <a><span>专注高校演示设计</span></a>
    </div>

    <div class="mini-search">
        <ul class="search-choice">
            <li><button class="default-choice" value="ppt"><i class="iconfont icon-gengduo"></i><span>分类</span></button></li>
            <li><button class="choice" value="ppt"><i class="iconfont icon-ppt"></i>PPT模板</button></li>
            <li><button class="choice" value="pr"><i class="iconfont icon-jianji"></i>Pr模板</button></li>
            <li><button class="choice" value="ae"><i class="iconfont icon-texiao"></i>Ae模板</button></li>
            <li><button class="choice" value="photo"><i class="iconfont icon-zhaoxiangji"></i>摄影美图</button> </li>
            <li><button class="choice" value="picture"><i class="iconfont icon-tupian"></i>背景图片</button></li>
        </ul>
        <div class="search-group">
            <form action="/template_shop/search/bySearchInfo">
                <input type="text" class="search-input" name="searchInfo" autocomplete="off">
                <button type="submit" class="search-submit"><i class="iconfont icon-sousuo"></i></button>
            </form>
        </div>
    </div>

    <div class="user">
        <div class="head-image">
            <a class="img-container">
                <img src="${pageContext.request.contextPath}/resources/head_portrait/initial.png">
            </a>
        </div>
        <div class="user-info">
            <a class="info-container">
                <p class="user-account"></p>
                <p class="user-status"></p>
            </a>
        </div>
    </div>
    <div class="message">
        <a class="message-container"><i class="iconfont icon-xiaoxi"></i></a>
    </div>
    <div class="vip">
        <a class="vip-container"><i class="iconfont icon-zuanshi"></i></a>
    </div>
</nav>
<div class="showDetail-main clearfix" style="width: 1200px; margin: 0 auto;">
    <!--左边部分start-->
    <div class="main-left fl" style="overflow: hidden">
        <div class="bread-crumbs">
            <span>当前位置：</span>
            <a>首页</a>
            <span>
                    >
                </span>
            <a>平面广告</a>
            <span>
                    >
                </span>
            <a>海报</a>
            <span>
                    >
                </span>
            <a>节日作品</a>
            <span>
                    >
                </span>
            <a>当日作品</a>
        </div>
        <div class="mainLeft-title">
            <div class="pic-type">原创</div>
            <span>成为原创VIP即可享受免费海量下载，低至每天0.18元。</span>
            <a style="color: #10c55b;">点击了解详情>></a>
        </div>
        <div class="mainLeft-pics">
            <div style="background-color: #EEE;width: 100%;height: 100%">
                <img src="http://localhost:8080/template_file/demo/page_demo_detail/${tmplDetail.path}">
            </div>
        </div>
    </div>
    <!--左边部分end-->
    <!--右边部分start-->
    <div class="main-right fr">
        <!--图片详情-->
        <p>编号：${tmplDetail.id}</p>
        <p class="main-rightStage">尺寸：3543×4724像素</p>
        <p class="main-rightStage">模式：CMYK</p>
        <p class="main-rightStage">体积：18.29 MB</p>
        <p class="main-rightStage">分辨率：150dpi</p>
        <p>
            <span>授权方式</span>：
            <%--<a href="" class="alert-color">VRF协议</a>--%>
            <%--<span>(可商用)</span>--%>
        </p>
        <p>
            <span>版权所有：@iuSugar</span>
            <!--<a href="" class="down_cop1">下载企业授权协议</a>-->
        </p>
        <!--点击下载start-->
        <div class="fr clearfix detail-down showDetail-header">
            <div class="detailBtn-down download-page fl">
                <i class="icon icon-loadown"></i>
                <span><a class="file-path" download="">立即下载</a></span>
            </div>
            <div class="detailBtn-fav fl handle-fav">
                <i class="icon icon-shoucang">收藏</i>
            </div>
            <div class="detailBtn_float_see"></div>
        </div>
        <!--作者信息start-->
        <div class="mainRight-user clearfix">
            <div class="fl">
                <a href="http://www.58pic.com/u/20725251/" class="fl user-img">
                    <img class="head-img2"
                         src="${pageContext.request.contextPath}/resources/head_portrait/initial.png" width="48"
                         height="48" alt="">
                </a>
                <div class="user-box fl">
                    <div>
                        <a href="http://www.58pic.com/u/20725251/" class="user-name">
                            ${requestScope.tmplAuthor.username}
                        </a>
                    </div>
                    <div>
                        <div class="user-info">${requestScope.tmplAuthor.province} | 设计师</div>
                    </div>
                </div>
                <!--hover弹窗start-->
                <div class="user-detail">
                    <a href="http://www.58pic.com/u/20725251/"><img
                            class="head-img2"
                            src="${pageContext.request.contextPath}/resources/head_portrait/initial.png"
                            width="80"
                            height="80" alt="">
                    </a>
                    <div class="detail-name">
                        <a href="http://www.58pic.com/u/20725251/">${requestScope.tmplAuthor.username}</a><a
                            class="user-v" href="http://www.58pic.com/index.php?m=ogcintro" target="_blank"></a></div>
                    <div class="detail-address">${requestScope.tmplAuthor.province} | 设计师</div>
                    <div class="clearfix detail-count">
                        <div class="fl">
                            <a href="http://www.58pic.com/u/20725251/">
                                <span>创作</span>
                                <span>311</span>
                            </a>
                        </div>
                        <div class="fr">
                            <a href="http://www.58pic.com/u/20725251/">
                                <span>粉丝</span>
                                <span>235</span>
                            </a>
                        </div>
                    </div>
                    <div class="detail-btnGroup">
                        <a href="http://www.58pic.com/u/20725251/" class="detail-home fl"
                           title="TA的个人主页" target="_blank" rel="nofollow">查看主页</a>
                        <div class="user-btn js-gz cure fr" data-id="20725251">关注</div>
                    </div>
                </div>
                <!--hover弹窗end-->
            </div>
            <div class="user-btn js-gz cure fr">关注</div>
        </div>
        <div class="mainRight-picTitle clearfix"><span class="fl">TA的相关作品</span>
            <!--<a href="http://www.58pic.com/member/20725251/" class="fr" target="_blank" sta-site="14" stats-point="120">查看更多</a>-->
            <!-- editor tumingke 2018-06-15 --><a href="http://www.58pic.com/u/20725251/" class="fr" target="_blank"
                                                  sta-site="14" stats-point="120">查看更多</a>
        </div>
        <div class="mainRight-picDetail clearfix">
            <a href="">
                <img
                        src="http://pic.qiantucdn.com/58pic/33/33/38/64558PIC758PIC0eG78fFvMc1_PIC2018.jpg!/fw/120/compress/true/clip/120x160a0a0"
                        alt="">
            </a>
            <a href="" class="fl"><img
                    src="http://pic.qiantucdn.com/58pic/33/33/20/13b58PICbab9KbeGAbVRZ_PIC2018.jpg!/fw/120/compress/true/clip/120x160a0a0"
                    alt="">
            </a>
            <a href="" class="fl">
                <img
                        src="http://pic.qiantucdn.com/58pic/33/33/14/40J58PICxiJh76c535s58PICb_PIC2018.jpg!/fw/120/compress/true/clip/120x160a0a0"
                        alt="">
            </a>
        </div>
        <!--作者信息end-->
        <!--标签start-->
        <div class="mainRight-tag">
            标签
        </div>
        <div class="clearfix mainRight-tagBox">
            <a class="fl" href="">2019海报</a>
            <a class="fl" href="">扁平风插画</a>
            <a class="fl" href="">春季海报</a>
            <a class="fl" href="">2019海报</a>
            <a class="fl" href="">看烟花海报</a>
            <a class="fl" href="">2019海报</a>
            <a class="fl" href="">2019海报</a>
            <a class="fl" href="">2019海报</a>
        </div>
        <!--标签end-->
        <!--点击下载end-->
    </div>
    <!--右边部分end-->
</div>

<div class="login-container">
    <div class="login-page">
        <div class="head">
                <span class="headline">
                    登录
                </span>
            <span class="cancel">
                    <i class="iconfont icon-cha"></i>
                </span>
        </div>
        <div class="login-info">
            <%--<form action="/template_shop/user/login" method="post">--%>
            <div class="account-area">
                <label>帐号：</label>
                <span ><input type="text" name="account" class="info-input account" autocomplete="off" maxlength="10" value="1150299331"></span>
            </div>
            <div class="password-area">
                <label>密码：</label>
                <span ><input type="password" name="password" class="info-input password" maxlength="16"></span>
            </div>
            <div class="submit-container">
                <input type="submit" value="登录" class="login-submit">
                <button type="button" class="forget-password">忘记密码?</button>
            </div>
            <%--</form>--%>

        </div>
    </div>
</div>


<script>
    var a = "${requestScope.tmplDetail.userId}";


    //下载按钮
    var $file_download = $(".file-path");
    $file_download.click(function () {
       if ($session_account == ""){
           $(".login-container").css("display","block");
       }
    });


    //检测登录状态*************************
    var $session_account = "${sessionScope.account}";
    var $user_account = $(".user-account");
    var $user_status = $(".user-status");
    if ($session_account == ""){
        $user_account.html("请登录")
    }
    else {
        $user_account.html($session_account);
        $user_status.html("普通用户")
        $file_download.attr("href","http://localhost:8080/template_file/source_file/${tmplDetail.path}")
    }

    //头像处点击登录或者跳转个人页面
    $(".user").click(function () {
        var $account = "${sessionScope.account}";
        if ($account == ""){
            $(".login-container").css("display","block")
        }
        else if ($account != "") {
            $.ajax({
                url:"/template_shop/personal/userPage",
                data:{"account":"${sessionScope.account}"},
                type:"post",
                success:function () {
                    window.location.href = "/template_shop/personal/userPage";
                }
            })
        }

    });

    //登录按钮
    $(".login-submit").click(function () {
        var $account = $(".account").val();
        var $password = $(".password").val();
        $.ajax({
            url:"/template_shop/user/login",
            data:{"account":$account,"password":$password},
            type:"post",
            success:function (res) {
                if (res == "true") {
                    window.location.reload();
                }
                else {
                    alert("帐号或密码错误");
                }
            }
        })
    })


//    关闭登录页面
    var $login_cancel = $(".cancel");
    $login_cancel.click(function () {
        $(".login-container").css("display","none");
    })
</script>
</body>
</html>