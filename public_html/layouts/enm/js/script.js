$(document).ready(function(){

    /* sitemap btn */
    $('.btn-sitemap').click(function(){
        $('.sitemap').addClass('open')
    }).resize(); 

    $('.sitemap-close').click(function(){
        $('.sitemap').removeClass('open')
    }).resize(); 


    /* mobile menu sitemap */
    const menu_first = $('.menu-wrapper').find('li');
    const menu_second = $('.sub-wrap').find('ul');
    menu_first.eq(0).addClass('active');
    menu_second.hide().eq(0).show();
    menu_first.click(function(){
        const idx = $(this).index();
        $(this).addClass('active').siblings().removeClass('active');
        for (let i = 0; i < 9; i++) {
            if (idx === i) {
                menu_second.hide();
                menu_second.eq(i).show();
            }
        }
    });
   

    /** sub tab **/
    $('.dropdown').click(function(){
        $(this).toggleClass('on');
        if ($(this).hasClass('on')) {
            $(this).find('ul').slideDown();
            $(this).find('span i').addClass('rotate-180');
        } else {
            $(this).find('ul').slideUp();
            $(this).find('span i').removeClass('rotate-180');
        }
     });


    //history
    $(".his-tab li").on("click", function(){
        $(this).addClass("active");
        $('.his-tab li').not(this).removeClass("active");
    });

    $('.his-tab li').click(function(){
        let i = $(this).index();
        $('.his-con').removeClass('active')
        $('.his-con').eq(i).addClass('active')


});




});
