
<%--
  Created by IntelliJ IDEA.
  User: 73180
  Date: 2018/12/23
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>艾优苏格_专注高校演示设计</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/icon/iu.ico" type="image/x-icon" />
    <link href="//at.alicdn.com/t/font_762060_3g75u8urdoz.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/search.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/navbar.css" type="text/css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/img2blob.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.lazyload.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/navbar.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/search.js" type="text/javascript"></script>
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
                <form action="/template_shop/search/bySearchInfo" >
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
        <div class="result-wrapper">
            <div class="current-location">
                <label>当前位置：</label>
                <span class="all">全部</span>
                <span>>${sessionScope.searchInfo}</span>
            </div>
            <div class="classification">
                <label>分类：</label>
                <span class="all-kind "><a >全部</a></span>
                <span class="video-kind"><a>视频音效</a></span>
                <span class="design-kind"><a>设计元素</a></span>
                <span class="ppt-kind"><a>PPT模板</a></span>
                <span class="picture-kind"><a>高清图库</a></span>
                <span class="background-kind"><a>背景</a></span>
            </div>
            <div class="format">
                <label>格式：</label>
                <span><a><input type="checkbox" class="format-check" name="format" value="all" checked>全部</a></span>
                <span><a><input type="checkbox" class="format-check" name="format" value="psd">PSD</a></span>
                <span><a><input type="checkbox" class="format-check" name="format" value="jpg">JPG</a></span>
                <span><a><input type="checkbox" class="format-check" name="format" value="png">PNG</a></span>
                <span><a><input type="checkbox" class="format-check" name="format" value="pptx">PPTX</a></span>
                <span><a><input type="checkbox" class="format-check" name="format" value="mp4">MP4</a></span>
            </div>
            <div class="choice-bar">
                <div class="nav-list">
                    <a class="type-choice">
                        <span>类型</span>
                        <i class="iconfont icon-icon_arrow_bottom"></i>
                    </a>
                    <ul class="type-list">
                        <li><a>全部</a></li>
                        <li><a>原创设计</a></li>
                        <li><a>共享素材</a></li>
                    </ul>
                </div>
                <div class="nav-list">
                    <a class="copyright-choice">
                        <span>版权</span>
                        <i class="iconfont icon-icon_arrow_bottom"></i>
                    </a>
                    <ul class="copyright-list">
                        <li><a>全部</a></li>
                        <li><a>可商用</a></li>
                    </ul>
                </div>
                <div class="nav-list">
                    <a>
                        <span></span>
                    </a>
                </div>
                <div class="nav-list">
                    <a>
                        <span></span>
                    </a>
                </div>

                <div class="sort-label">
                    <label>排序：</label>
                </div>
                <div class="sort-order">
                    <a class="default-sort ">默认</a>
                </div>
                <div class="sort-order">
                    <a class="latest">最新上传</a>
                </div>
                <div class="sort-order">
                    <a class="download-most">下载最多</a>
                </div>
                <div class="sort-order">
                    <a class="collect-most">收藏最多</a>
                </div>

                <div class="page-turning">
                    <c:choose>
                    <c:when test="${sessionScope.paging.dataList==null || fn:length(sessionScope.paging.dataList)== 0}">
                        <button class="prev-btn" ><i class="iconfont icon-icon_arrow_left"></i></button>
                        <button class="next-btn" ><i class="iconfont icon-icon_arrow_right"></i></button>
                    </c:when>
                    <c:when test="${sessionScope.paging.dataList!=null && fn:length(sessionScope.paging.dataList)> 0}">
                        <button class="prev-btn" onclick="goPage(${sessionScope.paging.currentPage-1})"><i class="iconfont icon-icon_arrow_left"></i></button>
                        <button class="next-btn" onclick="goPage(${sessionScope.paging.currentPage+1})"><i class="iconfont icon-icon_arrow_right"></i></button>
                    </c:when>
                    </c:choose>
                </div>
                <div class="page-account">
                    <span class="current-page">${sessionScope.paging.currentPage}</span>
                    <span>/</span>
                    <span class="total-page">${sessionScope.paging.totalPage}</span>
                </div>
            </div>

            <div class="related-search">
                <p>相关搜索：</p>
                <a>答辩</a>
                <a>答辩ppt模板</a>
                <a>毕业论文ppt模板</a>
                <a>毕业答辩</a>
                <a>论文答辩</a>
                <a>答辩免费下载</a>
            </div>
        </div>

        <div class="search-result-wrapper">
        <c:choose>
            <c:when test="${sessionScope.paging.dataList!=null && fn:length(sessionScope.paging.dataList)> 0}">
                <c:forEach var="list" items="${sessionScope.paging.dataList}">
                    <div class="template-display">
                        <div class="mask">
                            <span class="collection-choice"><i class="iconfont icon-collection"></i></span>
                            <div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>
                        </div>
                        <img src="" class="lazy-load demo-img" data-original="http://localhost:8080/template_file/demo/page_demo/${list.path}" data-imgId="${list.id}">
                        <div class="demo-description">
                            <p>${list.name}</p>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <img src="http://localhost:8080/template_file/sorry/sorry.png">
            </c:otherwise>
        </c:choose>
            <%--<div class="template-display">--%>
                <%--<div class="mask">--%>
                    <%--<span class="collection-choice"><i class="iconfont icon-collection"></i></span>--%>
                    <%--<div class="download-button-container"><a class="download-button"><i class="iconfont icon-xiazai"></i>免费下载</a></div>--%>
                <%--</div>--%>
                <%--<!--<img src="../resources/images/test_element/test.jpg">-->--%>
                <%--<img src="http://localhost:8080/template_file/demo/page_demo/ppt/day009.jpg"  >--%>
                <%--<div class="demo-description">--%>
                    <%--<p>这是描述和简介绝对路径</p>--%>
                <%--</div>--%>
            <%--</div>--%>

        </div>

        <div style="text-align:center; margin-top:40px" id="venderfen">
            当前第${sessionScope.paging.currentPage}页/共${sessionScope.paging.totalPage }页
            <c:choose>
                <c:when test="${sessionScope.paging.currentPage==0&&sessionScope.paging.totalPage==0}">

                </c:when>
                <c:when test="${sessionScope.paging.currentPage==1&&sessionScope.paging.totalPage==0}">

                </c:when>
                <c:when test="${sessionScope.paging.currentPage==1&&sessionScope.paging.totalPage==1}">

                </c:when>
                <c:when test="${sessionScope.paging.currentPage==2&&sessionScope.paging.totalPage==2}">
                    <input type="button" value="首页" onclick="goPage(1)" />
                    <input type="button" value="上一页"
                           onclick="goPage(${sessionScope.paging.currentPage-1})" />
                </c:when>
                <c:when test="${sessionScope.paging.currentPage==1 }">
                    <%--<input type="button" value="上一页" >--%>
                    <input type="button" value="下一页"
                           onclick="goPage(${sessionScope.paging.currentPage+1})" />
                    <input type="button" value="末页"
                           onclick="goPage(${sessionScope.paging.totalPage})" />
                </c:when>
                <c:when test="${sessionScope.paging.currentPage==sessionScope.paging.totalPage }">
                    <input type="button" value="首页" onclick="goPage(1)" />
                    <input type="button" value="上一页"
                           onclick="goPage(${sessionScope.paging.currentPage-1})" />
                </c:when>
                <c:otherwise>
                    <input type="button" value="首页" onclick="goPage(1)" />
                    <input type="button" value="上一页"
                           onclick="goPage(${sessionScope.paging.currentPage-1})" />
                    <input type="button" value="下一页"
                           onclick="goPage(${sessionScope.paging.currentPage+1})" />
                    <input type="button" value="末页"
                           onclick="goPage(${sessionScope.paging.totalPage})" />
                </c:otherwise>
            </c:choose>
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

    <%--点击模板跳转详情界面--%>
    var $template_display = $(".template-display");
    $template_display.click(function () {
       // alert($(this).find(".demo-img").attr("data-imgId"))
        var $img_id = $(this).find(".demo-img").attr("data-imgId");
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

    <%--页面排序方式 初始默认排序--%>
    var $sort = "${sessionScope.sort}";
    if ($sort == "" || $sort == "default"){
        $(".default-sort").addClass("sort-choose");
    }else if ($sort == "latest"){
        $(".latest").addClass("sort-choose");

    }

    <%--根据最新上传排序--%>
    var $latest_upload = $(".latest");
    $latest_upload.click(function () {
       $.ajax({
           url:"/template_shop/search/latest",
           type:"get",
           success:function () {
               window.location.href = "http://localhost:8080/template_shop/view/iusugar_search.jsp"
           },
           error:function () {
               alert("出现了错误哦");
           }
       })
    });

    //默认排序
    var $default_sort = $(".default-sort");
    $default_sort.click(function () {
        $.ajax({
            url:"/template_shop/search/default",
            type:"get",
            success:function () {
                window.location.href = "http://localhost:8080/template_shop/view/iusugar_search.jsp"
            },
            error:function () {
                alert("出现了错误哦");
            }
        })
    });

    <%--根据分类搜索--%>
    var $tmpl_kind = $(".classification span");
    $tmpl_kind.click(function () {
        var str = $(this).attr("class").split("-")[0];
        $(this).addClass("kind-choose");
        $(this).siblings().removeClass("kind-choose");
        $.ajax({
            url:"/template_shop/search/byKind",
            data:{"kind":str},
            type:"get",
            success:function (res) {
                window.location.href = "http://localhost:8080/template_shop/view/iusugar_search.jsp"
            },
            error:function () {
                alert("出错了")
            }
        })
    });



    //分页请求**********************************
    function goPage(page) {
        location.href ="/template_shop/search/byPage?currentPage="+page;
    }

    //登录或者进入个人页面*************************
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
                    window.location.href = "/template_shop/personal/userPage"
                }
            })
        }
    });

    //模板种类*********************************
    var $session_type = "${sessionScope.kind}";
    if ($session_type == "all"){
        $(".all-kind").addClass("kind-choose");
    }else if ($session_type == "video") {
        $(".video-kind").addClass("kind-choose");
    }else if ($session_type == "design") {
        $(".design-kind").addClass("kind-choose");
    }else if ($session_type == "ppt") {
        $(".ppt-kind").addClass("kind-choose");
    }else if ($session_type == "picture"){
        $(".picture-kind").addClass("kind-choose");
    } else if ($session_type == "background"){
        $(".background-kind").addClass("kind-choose");
    }


    //显示登录状态***********************************
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

    //登录请求************************************
    $(".login-submit").click(function () {
        var $account = $(".account").val();
        var $password = $(".password").val();
        $.ajax({
            url:"/template_shop/user/login",
            data:{"account":$account,"password":$password},
            type:"post",
            success:function (res) {
                if (res == "true") {
                    window.location.href = "http://localhost:8080/template_shop/view/iusugar_search.jsp";
                }
                else {
                    alert("帐号或密码错误");
                }
            }
        })
    })



</script>

<script>

        // $("img").addClass("with-waterMark");
        // with watermark
        // $("img.with-waterMark").img2blob({
        //     watermark: '@iusugar',
        //     fontStyle: 'Microsoft YaHei,Arial',
        //     fontSize: '30', // px
        //     fontColor: 'rgba(240,240,240,.3)', // default 'black'
        //     fontX: 10, // The x coordinate where to start painting the text
        //     fontY: 50 // The y coordinate where to start painting the text
        // });

        //图片懒加载******************************************
        $("img.lazy-load").lazyload({
            placeholder:"",    //图片未加载出来时显示的占位图
            effect:"show",          //展现的方式,常用：show显示\fadeIn闪现
            threshold:100,      //在距离屏幕多少px时开始加载
            event:"scroll",        //懒加载的触发事件,常用：click点击/mouseover鼠标移入/sporty运动/默认为scroll滑动
            // container:$("#main"),   //指定容器内的元素产生效果
            failure_limit:0                //加载多少张可见区域外的图片
        });

</script>
</body>
</html>
