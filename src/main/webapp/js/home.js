$(function () {
    var $height = $(document).scrollTop();
    var $top_header = $(".top-header");
    if ($height > 150)
        $top_header.css("position","fixed");
    if ($height < 150)
        $top_header.css("position","absolute");
    //滚动事件
    $(window).scroll(function () {
        $height = $(document).scrollTop();
        $top_header = $(".top-header");
        $scroll_select = $(".scroll-select");
        $mini_search = $(".mini-search");
        if ($height > 150){
            $scroll_select.hide();
            $mini_search.show()
            $top_header.css("position","fixed");
        }
        if ($height < 150){
            $scroll_select.show();
            $mini_search.hide();
            $top_header.css("position","absolute");
        }

    });

    //navbar中design图标
    $(".design,.design-dropdown-menu").hover(function () {
        $(".design-dropdown-menu").css({"opacity":"1","max-height":"300px"});
        $(".design a").css("color","#fff");
        $(".design").css("background","linear-gradient(90deg,rgba(50,210,50,1),rgba(50,190,50,1))");
    },function () {
        $(".design-dropdown-menu").css({"opacity":"0","max-height":"0"});
        $(".design a").css("color","rgba(40,40,40,.7)");
        $(".design").css("background","transparent");
    });
    //navbar中template图标
    $(".template,.template-dropdown-menu").hover(function () {
        $(".template-dropdown-menu").css({"opacity":"1","max-height":"300px"});
        $(".template a").css("color","#fff");
        $(".template").css("background","linear-gradient(90deg,rgba(0,170,255,1),rgba(0,150,240,1))");
    },function () {
        $(".template-dropdown-menu").css({"opacity":"0","max-height":"0"});
        $(".template a").css("color","rgba(40,40,40,.7)");
        $(".template").css("background","transparent");
    });

    //搜索选择按钮
    var typeChoiceFlag = 0;
    $(".search-bar").find(".default-choice").click(function () {
        event.stopPropagation();
        var $choice = $(".search-bar").find("button.choice");
        if (typeChoiceFlag == 0){
            $choice.css("display","block");
            typeChoiceFlag = 1;
        }
        else {
            $choice.css("display","none");
            typeChoiceFlag = 0;
        }
    });
    $(document.body).click(function () {
        $("button.choice").css("display","none");
        typeChoiceFlag = 0;
    });

    $(".search-bar").find(".choice").click(function () {
        var this_val = $(this).val();
        var this_html = $(this).html();
        var str = this_html.substring(this_html.indexOf("i>")+2);
        var $default = $(".search-bar").find(".default-choice");
        $default.val(this_val);
        $default.html(str);
        $default.css({"color":"rgba(40,40,40,.7)","font-size":"14px"})
    })

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

    var $login_cancel = $(".cancel");
    $login_cancel.click(function () {
        $(".login-container").css("display","none");
    })



});