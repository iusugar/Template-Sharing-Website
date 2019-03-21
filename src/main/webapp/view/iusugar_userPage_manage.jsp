<%--
  Created by IntelliJ IDEA.
  User: 73180
  Date: 2018/12/25
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>管理中心 - iuSugar</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/icon/iu.ico" type="image/x-icon" />
    <link href="//at.alicdn.com/t/font_762060_3g75u8urdoz.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/navbar.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/userPage_manage.css" type="text/css" rel="stylesheet">
    <!--<link href="../css/file_upload_css/bootstrap.min.css" type="text/css" rel="stylesheet">-->
    <link href="${pageContext.request.contextPath}/css/file_upload_css/ssi-uploader.css" type="text/css" rel="stylesheet" charset="UTF-8">
    <!--<link href="../css/file_upload_css/style.css" type="text/css" rel="stylesheet">-->

    <script src="${pageContext.request.contextPath}/jquery/jquery-3.3.1.js" type="text/javascript" charset="UTF-8"></script>
    <script src="${pageContext.request.contextPath}/js/navbar.js" type="text/javascript" charset="UTF-8"></script>
    <script src="${pageContext.request.contextPath}/js/userPage_manage.js" type="text/javascript" charset="UTF-8"></script>
    <script src="${pageContext.request.contextPath}/js/ssi-uploader.js" type="text/javascript" charset="UTF-8"></script>
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
                    <li class=" "><a href="/template_shop/personal/userPage">个人主页</a></li>
                    <li class="manage-center active"><a href="/template_shop/manage/filePage">管理中心</a></li>
                    <li class="vip-center"><a>VIP中心</a></li>
                </ul>
            </div>
        </div>

        <div class="file-area">
            <div class="sidebar-container">
                <ul class="sidebar">
                    <li><a class="sidebar-choose"><i class="iconfont icon-zuopin"></i>资源上传</a></li>
                    <li><a><i class="iconfont icon-guanli1"></i>作品管理</a></li>
                    <li><a><i class="iconfont icon-xiazai"></i>我的下载</a></li>
                </ul>
            </div>

            <div class="operation-area">
                <div class="demo-upload-area">
                        <input type="file" multiple id="demo_upload">
                </div>
                <div class="file-info-area" style="display: none">
                    <form action="/template_shop/manage/infoUpload" method="post" enctype="multipart/form-data" id="file-info">
                        <div class="file-type">
                            <p>素材类型：</p>
                            <input type="radio" name="type" value="ppt" class="radio" id="ppt-type" checked>
                            <label for="ppt-type" class="radio">PPT</label>
                            <input type="radio" name="type" value="ppt" class="radio" id="video-type">
                            <label for="video-type" class="radio">视频</label>
                            <input type="radio" name="type" value="ppt" class="radio" id="picture-type">
                            <label for="picture-type" class="radio">图片</label>
                            <input type="radio" name="type" value="ppt" class="radio" id="photo-type">
                            <label for="photo-type" class="radio">照片</label>
                        </div>
                        <div class="file-name">
                            <label>标题：</label>
                            <input type="text" name="name" class="file-name-input" maxlength="10" placeholder="请输入不多于10个字的标题" autocomplete="off">
                        </div>
                        <div class="file-description">
                            <label>描述：</label>
                            <textarea class="" name="description" rows="5" cols="50" maxlength="70" placeholder="输入不多于70字的描述"></textarea>
                        </div>
                        <div class="file-tag">
                            <label>标签：</label>
                            <span class="default-tag">
                                    <input type="text" name="tag" class="file-tag-input" maxlength="5" placeholder="请输入标签" autocomplete="off">
                                </span>
                            <!--<input type="text" class="file-tag-input" maxlength="5" placeholder="请输入标签">-->
                            <i class="iconfont icon-icon_add"></i>
                        </div>
                        <div class="file-format">
                            <label>格式：</label>
                            <span><a><input type="checkbox" class="format-check" name="format" value="psd" >PSD</a></span>
                            <span><a><input type="checkbox" class="format-check" name="format" value="jpg">JPG</a></span>
                            <span><a><input type="checkbox" class="format-check" name="format" value="png">PNG</a></span>
                            <span><a><input type="checkbox" class="format-check" name="format" value="pptx" checked>PPTX</a></span>
                            <span><a><input type="checkbox" class="format-check" name="format" value="mp4">MP4</a></span>
                        </div>
                        <div class="file-resource">
                            <label>资源文件：</label>
                            <label for="input-file">
                                <input type="file" name="file" id="input-file" multiple/>
                                <span class="input-style">
                                    <span class="left-button">上传素材</span>
                                    <span class="right-text" id="rightText"></span>
                                    </span>
                            </label>
                        </div>
                        <div class="file-path">
                            <input type="hidden" name="path" value="" id="file-path">
                        </div>
                        <div class="file-demo">
                            <img src="">
                        </div>
                    </form>
                </div>

                <div>
                    <button type="button" class="prev-btn" style="display: none">上一步</button>
                </div>
                <div>
                    <button type="button" class="submit-btn" disabled="disabled" form="file-info">下一步</button>
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

<script type="text/javascript">


    $("#demo_upload").ssi_uploader({
        url: '/template_shop/manage/demoUpload',
        locale:"zh_CN",
        maxFileSize: 8,
        type:"post",
        ajaxOptions: {
            headers:{
                'Authentication': "token"
            },
            success:function(res) {
                if (res.toString() != null) {
                    $(".submit-btn").removeAttr("disabled");
                    $(".file-demo img").attr("src","http://localhost:8080/template_file/demo/page_demo/"+res.toString());
                    $("input#file-path").attr("value",res.toString());
                }
            }
        }
    });


    var $session_account = "${sessionScope.account}";
    var $user_account = $(".user-account");
    var $user_status = $(".user-status");

    $user_account.html($session_account);
    $user_status.html("普通用户");
</script>

<script>
    $(function () {

        //侧边栏选择
        $sidebar_li = $(".sidebar li");
        $sidebar_li.click(function () {
            $(this).find("a").addClass("sidebar-choose");
            $(this).siblings().find("a").removeClass("sidebar-choose");
        });

        //增加标签
        $tag_add = $(".file-tag .icon-icon_add");
        $file_tag = $(".file-tag");
        $tag_add.click(function () {
            // $file_tag.append("<input type=\"text\" class=\"file-tag-input\" placeholder=\"请输入\">")
            $tag_add.before("<input type=\"text\" name=\"tag\" class=\"file-tag-input\" maxlength=\"5\" placeholder=\"请输入标签\" autocomplete=\"off\">");
            if ($("input.file-tag-input").length == 5){
                $(this).hide();
            }
        });

        //上传文件格式选择
        $("input[name='format']").click(function () {
            $("input[name='format']").prop("checked", false);
            // 设置选中当前
            $(this).prop("checked", true);
        });

        //上传文件按钮
        var fileBtn = $("input[type=file]#input-file");
        fileBtn.on("change", function(){
            var index = $(this).val().lastIndexOf("\\");
            var sFileName = $(this).val().substr((index+1));
            $("#rightText").html(sFileName);
            $submit.attr("type","submit")
        });

        //上传之间的切换
        $upload_area = $(".demo-upload-area");
        $info_area = $(".file-info-area");
        $submit = $(".submit-btn");
        $prev = $(".prev-btn");

        $file_form = new FormData(document.getElementById("file-info"));
        $submit.click(function () {
            if (!$upload_area.is(":hidden")){
                $upload_area.hide();
                $info_area.show();
                $prev.show();
                $submit.html("提交");
            }else {
                // $.ajax({
                //     url:'/template_shop/manage/infoUpload',
                //     type:"post",
                //     data:$file_form,
                //     processData:false,
                //     contentType:false,
                //     success:function (res) {
                //         alert("2"+res.toString())
                //     },
                //     error:function () {
                //         alert(3)
                //     }
                // })
            }
        });
        $prev.click(function () {
            $upload_area.show();
            $info_area.hide();
            $submit.html("下一步");
            $(this).hide();
        });

    });
</script>
</body>
</html>
