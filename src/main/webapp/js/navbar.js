$(function () {
    //mini搜索选择按钮
    var mini_typeChoiceFlag = 0;
    $(".mini-search").find(".default-choice").click(function () {
        event.stopPropagation();
        var $choice = $(".mini-search").find("button.choice");
        if (mini_typeChoiceFlag == 0){
            $choice.css("display","block");
            mini_typeChoiceFlag = 1;
        }
        else {
            $choice.css("display","none");
            mini_typeChoiceFlag = 0;
        }
    });
    $(document.body).click(function () {
        $("button.choice").css("display","none");
        mini_typeChoiceFlag = 0;
    });

    $(".mini-search").find(".choice").click(function () {
        var this_val = $(this).val();
        var this_html = $(this).html();
        var str = this_html.substring(this_html.indexOf("i>")+2);
        var $default = $(".mini-search").find(".default-choice");
        $default.val(this_val);
        $default.html(str);
        $default.css({"color":"rgba(40,40,40,.7)","font-size":"14px"})
    })


});