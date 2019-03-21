<%--
  Created by IntelliJ IDEA.
  User: 73180
  Date: 2018/12/21
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
    <!--<link rel="icon" href="../resources/icon/iu.jpg" sizes="200x300" type="image/png">-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/icon/iu.ico" type="image/x-icon" />
    <link href="//at.alicdn.com/t/font_762060_3g75u8urdoz.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/home.css" type="text/css" rel="stylesheet">
    <!--<link href="../css/iconfontCSS.css" type="text/css" rel="stylesheet"/>-->

    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/carousel.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/home.js" type="text/javascript"></script>
</head>
<body >
<div class="container">
    <nav class="top-header">
        <div class="brand">
            <a href="/template_shop/init/home"><img src="${pageContext.request.contextPath}/resources/images/logo/iusugarLOGO.png"></a>
        </div>
        <div class="vertical-line"></div>
        <div class="slogan">
            <a><span>专注高校演示设计</span></a>
        </div>

        <div class="mini-search">
            <ul class="search-choice">
                <li><button class="default-choice" name="pptChoice" value="ppt" ><i class="iconfont icon-gengduo"></i><span>分类</span></button></li>
                <li><button class="choice" value="ppt"><i class="iconfont icon-ppt"></i>PPT模板</button></li>
                <li><button class="choice" value="pr"><i class="iconfont icon-jianji"></i>Pr模板</button></li>
                <li><button class="choice" value="ae"><i class="iconfont icon-texiao"></i>Ae模板</button></li>
                <li><button class="choice" value="photo"><i class="iconfont icon-zhaoxiangji"></i>摄影美图</button> </li>
                <li><button class="choice" value="picture"><i class="iconfont icon-tupian"></i>背景图片</button></li>
            </ul>
            <div class="search-group">
                <form action="/template_shop/search/bySearchInfo" id="search-form">
                    <input type="text" class="search-input" name="searchInfo" autocomplete="off">
                    <button type="submit" class="search-submit"><i class="iconfont icon-sousuo"></i></button>
                </form>
            </div>
        </div>

        <div class="design navbar-dropdown scroll-select">
            <a class="nav-container design-container"><span>设计创意</span></a>
        </div>
        <div class="template navbar-dropdown scroll-select">
            <a class="nav-container"><span>创意模板</span></a>
        </div>
        <div class="animation navbar-dropdown scroll-select">
            <a class="nav-container"><span>动画教程</span></a>
        </div>
        <div class="more navbar-dropdown scroll-select">
            <a class="nav-container"><i class="iconfont icon-more"></i></a>
        </div>

        <div class="user" id="user">
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

        <ul class="navbar-dropdown-menu design-dropdown-menu">
            <li>
                <a class="design-creativity">
                    <div><i class="iconfont icon-beijingtupian"></i></div>
                    <div><p><a>背景图片</a></p></div>
                </a>
            </li>
            <li>
                <a class="design-creativity">
                    <div><i class="iconfont icon-icon-elements"></i></div>
                    <div><p>设计素材</p></div>
                </a>
            </li>
            <li>
                <a class="design-creativity">
                    <div><i class="iconfont icon-yinle"></i></div>
                    <div><p>背景音乐</p></div>
                </a>
            </li>
            <li>
                <a class="design-creativity">
                    <div><i class="iconfont icon-renwuzhengmian"></i></div>
                    <div><p>人物元素</p></div>
                </a>
            </li>
            <li>
                <a class="design-creativity">
                    <div><i class="iconfont icon-zhaoxiangji"></i></div>
                    <div><p>高清图库</p></div>
                </a>
            </li>
        </ul>
        <ul class="navbar-dropdown-menu template-dropdown-menu">
            <li>
                <a class="template-creativity">
                    <div><i class="iconfont icon-PPT"></i></div>
                    <div><p>PPT模板</p></div>
                </a>
            </li>
            <li>
                <a class="template-creativity">
                    <div><i class="iconfont icon-word"></i></div>
                    <div><p>Word模板</p></div>
                </a>
            </li>
            <li>
                <a class="template-creativity">
                    <div><i class="iconfont icon-excel"></i></div>
                    <div><p>Excel模板</p></div>
                </a>
            </li>
            <li>
                <a class="template-creativity">
                    <div><i class="iconfont icon-jianli"></i></div>
                    <div><p>简历模板</p></div>
                </a>
            </li>
        </ul>
    </nav>

    <div class="search-container">
        <div class="search-bar">
            <ul class="search-choice">
                <li><button class="default-choice" value="ppt" name="type" ><i class="iconfont icon-gengduo"></i><span>分类</span></button></li>
                <li><button class="choice" value="ppt"><i class="iconfont icon-ppt"></i>PPT模板</button></li>
                <li><button class="choice" value="pr"><i class="iconfont icon-jianji"></i>Pr模板</button></li>
                <li><button class="choice" value="ae"><i class="iconfont icon-texiao"></i>Ae模板</button></li>
                <li><button class="choice" value="photo"><i class="iconfont icon-zhaoxiangji"></i>摄影美图</button> </li>
                <li><button class="choice" value="picture"><i class="iconfont icon-tupian"></i>背景图片</button></li>
            </ul>
            <div class="search-group">
                <form action="/template_shop/search/bySearchInfo" method="get" id="search-bar">
                    <input type="text" class="search-input" name="searchInfo" autocomplete="off">
                    <button type="submit" class="search-submit"><i class="iconfont icon-sousuo"></i></button>
                </form>
            </div>
        </div>
    </div>

    <div class="picture-scroll-container">
        <div class="carousel-content">
            <ul class="carousel">
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype1.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype2.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype3.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype4.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype5.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype6.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype7.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/prototype/prototype8.jpg"></li>
            </ul>
            <ul class="img-index"></ul>
            <div class="carousel-prev"><img src="${pageContext.request.contextPath}/resources/images/prototype/left1.png"></div>
            <div class="carousel-next"><img src="${pageContext.request.contextPath}/resources/images/prototype/right1.png"></div>
        </div>
    </div>
    <!--PPT模板-->
    <div class="pop-template-container adjustment">
        <div class="pop-heading">
            <div class="pop-type">
                    <span>
                        <i class="iconfont icon-remen"></i>
                        <a class="pop-tag">热门PPT模板</a>
                    </span>
                <span>
                        <a class="pop-choice">优美配图</a>
                    </span>
                <span>
                        <a class="pop-choice">高端设计</a>
                    </span>
                <span>
                        <a class="pop-choice">工作汇报</a>
                    </span>
                <span>
                        <a class="pop-choice">私人订制</a>
                    </span>
            </div>
        </div>

        <div class="pop-body">
            <div class="template-container">
                <div class="template-display ppt-template">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/ppt_template/pt1.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
                <div class="template-display ppt-template">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/ppt_template/pt2.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
                <div class="template-display ppt-template">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/ppt_template/pt3.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
                <div class="template-display ppt-template">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/ppt_template/pt4.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--人物-->
    <div class="pop-template-container">
        <div class="pop-heading">
            <div class="pop-type">
                    <span>
                        <i class="iconfont icon-remen"></i>
                        <a class="pop-tag">人物素材</a>
                    </span>
                <span>
                        <a class="pop-choice">商务白领</a>
                    </span>
                <span>
                        <a class="pop-choice">唯美人像</a>
                    </span>
                <span>
                        <a class="pop-choice">自由清新</a>
                    </span>
                <span>
                        <a class="pop-choice">个人写真</a>
                    </span>
            </div>
        </div>

        <div class="pop-body">
            <div class="template-container">
                <div class="template-display portrait">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/portrait/portrait1.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
                <div class="template-display portrait">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/portrait/portrait2.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
                <div class="template-display portrait">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/portrait/portrait3.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
                <div class="template-display portrait">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/portrait/portrait4.jpg">
                    <div class="demo-description">
                        <p>这是描述和简介</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--壁纸-->
    <div class="pop-template-container">
        <div class="pop-heading">
            <div class="pop-type">
                    <span>
                        <i class="iconfont icon-remen"></i>
                        <a class="pop-tag">壁纸</a>
                    </span>
                <span>
                        <a class="pop-choice">豪华轿跑</a>
                    </span>
                <span>
                        <a class="pop-choice">科技</a>
                    </span>
                <span>
                        <a class="pop-choice">抽象派</a>
                    </span>
                <span>
                        <a class="pop-choice">美食摆拍</a>
                    </span>
            </div>
        </div>

        <div class="pop-body">
            <div class="template-container" style="align-content: space-between;height: 400px">
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/wallpaper/wallpaper1.jpg">
                    <div class="demo-description">
                        <p>豪华跑车高清摄影</p>
                    </div>
                </div>
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="${pageContext.request.contextPath}/resources/images/wallpaper/wallpaper2.jpg">
                    <div class="demo-description">
                        <p>科技质感</p>
                    </div>
                </div>
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="../resources/images/wallpaper/wallpaper3.jpg">
                    <div class="demo-description">
                        <p>艺术画廊</p>
                    </div>
                </div>
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="../resources/images/wallpaper/wallpaper4.jpg">
                    <div class="demo-description">
                        <p>无边浩瀚星空</p>
                    </div>
                </div>
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="../resources/images/wallpaper/wallpaper5.jpg">
                    <div class="demo-description">
                        <p>电视剧电影场景剧目</p>
                    </div>
                </div>
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="../resources/images/wallpaper/wallpaper6.jpg">
                    <div class="demo-description">
                        <p>甜品</p>
                    </div>
                </div>
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="../resources/images/wallpaper/wallpaper7.jpg">
                    <div class="demo-description">
                        <p>蔬果美食</p>
                    </div>
                </div>
                <div class="template-display wallpaper">
                    <div class="mask">
                        <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                        <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                    </div>
                    <img src="../resources/images/wallpaper/wallpaper8.jpg">
                    <div class="demo-description">
                        <p>虚拟人物电影英雄角色</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--视频模板-->
    <div class="pop-template-container">
        <div class="pop-heading">
            <div class="pop-type">
                    <span>
                        <i class="iconfont icon-remen"></i>
                        <a class="pop-tag">视频音频</a>
                    </span>
                <span>
                        <a class="pop-choice">大气开场</a>
                    </span>
                <span>
                        <a class="pop-choice">AE模板</a>
                    </span>
                <span>
                        <a class="pop-choice">广告</a>
                    </span>
                <span>
                        <a class="pop-choice">MG动画</a>
                    </span>
            </div>
        </div>

        <div class="pop-body">
            <div class="template-container">
                <div class="template-display video-template">
                    <video src="../resources/video/1.mp4" id="video1" width="360" preload="auto">此浏览器不支持视频播放</video>
                </div>
                <div class="template-display video-template">
                    <video src="../resources/video/2.mp4" id="video2" width="360" preload="auto">此浏览器不支持视频播放</video>
                </div>
                <div class="template-display video-template">
                    <video src="../resources/video/3.mp4" id="video3" width="360" preload="auto">此浏览器不支持视频播放</video>
                </div>

            </div>
        </div>
    </div>

    <footer>
        <div>
            <span>Spring期末项目</span>
        </div>
    </footer>
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
    $(function () {
        //视频hover播放***********************
        $("video").hover(function () {
            $(this)[0].play();
        },function () {
            $(this)[0].pause();
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
                contentType: "application/x-www-form-urlencoded;charset=utf-8",
                type:"post",
                success:function (res) {
                    if (res == "true") {
                        window.location.href = "http://localhost:8080/template_shop/view/iusugar_home.jsp";
                    }
                    else {
                        alert("帐号或密码错误");
                    }
                }
            })
        })

    })
</script>


<script type="text/javascript">
    //轮播图
    $(function(){
        $(".carousel-content").carousel({
            carousel : ".carousel",//轮播图容器
            indexContainer : ".img-index",//下标容器
            prev : ".carousel-prev",//左按钮
            next : ".carousel-next",//右按钮
            timing : 3000,//自动播放间隔
            animateTime : 700,//动画时间
            autoPlay : true,//是否自动播放 true/false
            direction : "left"//滚动方向 right/left
        });

        $(".carousel-content").hover(function(){
            $(".carousel-prev,.carousel-next").fadeIn(300);
        },function(){
            $(".carousel-prev,.carousel-next").fadeOut(300);
        });

        $(".carousel-prev").hover(function(){
            $(this).find("img").attr("src","${pageContext.request.contextPath}/resources/images/prototype/left2.png");
        },function(){
            $(this).find("img").attr("src","${pageContext.request.contextPath}/resources/images/prototype/left1.png");
        });
        $(".carousel-next").hover(function(){
            $(this).find("img").attr("src","${pageContext.request.contextPath}/resources/images/prototype/right2.png");
        },function(){
            $(this).find("img").attr("src","${pageContext.request.contextPath}/resources/images/prototype/right1.png");
        });
    });
</script>
</body>
</html>
