$(function () {
    var $personal_li = $(".personal-choice li");
    var $personal_li_a = $(".personal-choice li a");
    $personal_li_a.click(function () {
        $(this).parent().addClass("active");
        $(this).parent().siblings().removeClass("active");
        var $person_body = $(this).parent().parent().parent().siblings(".person-body");
        if ($(this).hasClass("works")){
            $person_body.find(".works-content").css("display","block");
            $person_body.find(".works-content").siblings().css("display","none")
        }
        if ($(this).hasClass("collection")){
            $person_body.find(".collection-content").css("display","block");
            $person_body.find(".collection-content").siblings().css("display","none");
        }
        if ($(this).hasClass("concern-concerned")){
            $person_body.find(".concern-content").css("display","block");
            $person_body.find(".concern-content").siblings().css("display","none");
        }
    });

    var $works_li = $(".works-bar li") ;
    $works_li.click(function () {
       $(this).addClass("bar-choose");
       $(this).siblings().removeClass("bar-choose");
   });

    var $concern_li = $(".concern-bar li");
    $concern_li.click(function () {
        $(this).addClass("bar-choose");
        $(this).siblings().removeClass("bar-choose");
    })


});