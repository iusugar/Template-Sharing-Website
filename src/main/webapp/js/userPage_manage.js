$(function () {

    //侧边栏选择
    $sidebar_li = $(".sidebar li");
    $sidebar_li.click(function () {
        $(this).find("a").addClass("sidebar-choose");
        $(this).siblings().find("a").removeClass("sidebar-choose");
    })

    //增加标签
    $tag_add = $(".file-tag .icon-icon_add");
    $file_tag = $(".file-tag");
    $tag_add.click(function () {
        // $file_tag.append("<input type=\"text\" class=\"file-tag-input\" placeholder=\"请输入\">")
        $tag_add.before("<input type=\"text\" class=\"file-tag-input\" maxlength=\"5\" placeholder=\"请输入标签\">")
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
    var fileBtn = $("input[type=file]");
    fileBtn.on("change", function(){
        var index = $(this).val().lastIndexOf("\\");
        var sFileName = $(this).val().substr((index+1));
        $("#rightText").html(sFileName);
    });

    //上传之间的切换
    $upload_area = $(".demo-upload-area");
    $info_area = $(".file-info-area");
    $submit = $(".submit-btn");
    $prev = $(".prev-btn");

    $submit.click(function () {
        if (!$upload_area.is(":hidden")){
            $upload_area.hide();
            $info_area.show();
            $prev.show();
            $submit.html("提交");
        }else {
            $.ajax({

            })
        }
    });
    $prev.click(function () {
        $upload_area.show();
        $info_area.hide();
        $submit.html("下一步");
        $(this).hide();
    });

});