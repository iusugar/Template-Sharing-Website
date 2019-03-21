$(function () {

    var $sort_choose = $(".sort-order");
    $sort_choose.click(function () {
        $(this).find("a").addClass("sort-choose");
        $(this).siblings().find("a").removeClass("sort-choose");
    });


    $("input[name='format']").click(function () {
        $("input[name='format']").prop("checked", false);
        // 设置选中当前
        $(this).prop("checked", true);
    })

    var $login_cancel = $(".cancel");
    $login_cancel.click(function () {
        $(".login-container").css("display","none");
    })

});