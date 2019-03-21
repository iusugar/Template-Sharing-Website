<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 73180
  Date: 2018/12/27
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心 - iuSugar</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/icon/iu.ico" type="image/x-icon" />
    <link href="//at.alicdn.com/t/font_762060_3g75u8urdoz.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/navbar.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/userPage_personal.css" type="text/css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/jQuery-slimScroll-1.3.8/jquery.slimscroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/navbar.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/userPage_personal.js" type="text/javascript"></script>
</head>
<body>
<div class="content">
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

    <div class="container">
        <div class="box">
            <div class="user-bar">
                <ul>
                    <li class=" active"><a href="/template_shop/personal/userPage">个人主页</a></li>
                    <li class="manage-center"><a href="/template_shop/manage/filePage">管理中心</a></li>
                    <li class="vip-center"><a>VIP中心</a></li>
                </ul>
            </div>

            <div class="personal-page">
                <div class="personal-head">
                    <div class="personal-bg">
                        <div class="concern-text">
                            <div class="concern">关注<br/><span>0</span></div>
                            <div class="concerned">粉丝<br/><span>0</span></div>
                        </div>
                        <div class="personal-portrait">

                        </div>
                    </div>
                    <div class="person-username">
                        <h4 class="username">${requestScope.currentUser.username}</h4>
                    </div>
                    <div class="person-intro">
                        <span>一句话描述自己吧!<i class="iconfont icon-xiugai"></i></span>
                    </div>
                    <div class="personal-btn">
                        <span><a href="/template_shop/personal/userMessage" class="personal-data">个人资料</a></span>
                        <span><a href="/template_shop/manage/filePage" class="start-create">开始创作</a></span>
                    </div>
                    <ul class="personal-choice">
                        <li class="active"><a class="works">作品</a></li>
                        <li class=""><a class="collection">收藏</a></li>
                        <li class=""><a class="concern-concerned">关注</a></li>
                    </ul>
                </div>

                <div class="person-body">
                    <div class="works-content">
                        <ul class="works-bar">
                            <li class="total bar-choose">全部(<a class="total-works">11</a>)</li>
                            <li class="">原创作品(<a class="original-works">5</a>)</li>
                            <li class="">共享作品(<a class="share-works">6</a>)</li>
                        </ul>
                        <div class="works-display">
                            <c:forEach var="list" items="${requestScope.worksList}">
                                <div class="template-display">
                                    <img src="http://localhost:8080/template_file/demo/page_demo/${list.path}" class="user-works" data-imgId="${list.id}">
                                    <div class="demo-description">
                                        <p>${list.name}</p>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="template-display">
                                <img src="../resources/images/test_element/test.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>

                            <div class="template-display">
                                <img src="../resources/images/ppt_template/pt1.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>

                            <div class="template-display">
                                <video src="../resources/video/1.mp4"></video>
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>

                            <div class="template-display">
                                <video src="../resources/video/1.mp4"></video>
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>

                            <div class="template-display">
                                <img src="../resources/images/test_element/test.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="collection-content">
                        <ul class="collection-bar">
                            <li>我收藏的(<a class="collection-account">13</a>)</li>
                        </ul>
                        <div class="collection-box">
                            <div class="template-display">
                                <img src="../resources/images/test_element/test.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>
                            <div class="template-display">
                                <img src="../resources/images/test_element/test.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>
                            <div class="template-display">
                                <img src="../resources/images/test_element/test.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>
                            <div class="template-display">
                                <img src="../resources/images/test_element/test.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>
                            <div class="template-display">
                                <img src="../resources/images/test_element/test.jpg">
                                <div class="demo-description">
                                    <p>这是描述和简介</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="concern-content">
                        <ul class="concern-bar">
                            <li class="bar-choose">粉丝(<a class="fans-account">0</a>)</li>
                            <li class="">关注的人(<a class="concerned-account">1</a>)</li>
                        </ul>
                        <div class="concern-box-container">
                            <div class="concern-box">
                                <ul>
                                    <li>
                                        <div class="concern-userInfo">
                                            <a class="userInfo-portrait"></a>
                                            <div class="userInfo-text">
                                                <p class="concern-username"><a>一只熊</a></p>
                                                <p class="concern-location">上海</p>
                                                <p class="concern-followNum">作品 199| 粉丝 288</p>
                                            </div>
                                        </div>
                                        <div class="concern-userWorks">
                                            <a class="userWorks"><img src="../resources/images/user_work/car.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/win.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/tech.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/snow.jpg"></a>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="concern-userInfo">
                                            <a class="userInfo-portrait"></a>
                                            <div class="userInfo-text">
                                                <p class="concern-username"><a>一只猪</a></p>
                                                <p class="concern-location">北京</p>
                                                <p class="concern-followNum">作品 211| 粉丝 209</p>
                                            </div>
                                        </div>
                                        <div class="concern-userWorks">
                                            <a class="userWorks"><img src="../resources/images/user_work/car.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/win.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/tech.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/snow.jpg"></a>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="concern-userInfo">
                                            <a class="userInfo-portrait"></a>
                                            <div class="userInfo-text">
                                                <p class="concern-username"><a>一只蜂</a></p>
                                                <p class="concern-location">杭州</p>
                                                <p class="concern-followNum">作品 15| 粉丝 128</p>
                                            </div>
                                        </div>
                                        <div class="concern-userWorks">
                                            <a class="userWorks"><img src="../resources/images/user_work/car.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/win.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/tech.jpg"></a>
                                            <a class="userWorks"><img src="../resources/images/user_work/snow.jpg"></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>

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

<script>
    $(function () {
        // $.ajax({
        //
        // });

        <%--点击模板跳转详情界面--%>
        var $user_works = $(".user-works");
        $user_works.click(function () {
            // alert($(this).find(".demo-img").attr("data-imgId"))
            var $img_id = $(this).attr("data-imgId");
            var newWindow = window.open("about:blank");
            $.ajax({
                url:"/template_shop/search/detail/"+$img_id,
                type:"get",
                success:function () {
                    newWindow.location.href = "/template_shop/search/detail/"+$img_id;
                    newWindow.focus();
                },
                error:function () {
                    alert("访问出错");
                }
            })
        });
    })
</script>

<script>
    var $session_account = "${sessionScope.account}";
    var $user_account = $(".user-account");
    var $user_status = $(".user-status");

    $user_account.html($session_account);
    $user_status.html("普通用户");

</script>

<script>
    $(function () {
        $(".concern-box").slimScroll({
            height: "95%",
            opacity:"0"
        })
    })
</script>
</body>
</html>
