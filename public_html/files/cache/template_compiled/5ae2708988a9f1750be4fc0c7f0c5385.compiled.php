<?php if(!defined("__XE__"))exit;?><header class="fac between">
    <a href="/">
        <img class="logo" src="/layouts/enm/img/main/header logo.png" alt="로고"/>
    </a>
    <div class="gnb fac">
        <ul class="menu fac between">
            <?php if($__Context->main_menu->list&&count($__Context->main_menu->list))foreach($__Context->main_menu->list as $__Context->key1=>$__Context->val1){;
if($__Context->val1['link']){ ?><li class="gnb-list">
                <a class="first-menu bold2" href="<?php echo $__Context->val1['href'] ?>" |cond="$__Context->val1['open_window']=='Y'"><?php echo $__Context->val1['text'] ?></a>
                <?php if($__Context->val1['list']){ ?><ul class="second-menu">
                    <?php if($__Context->val1['list']&&count($__Context->val1['list']))foreach($__Context->val1['list'] as $__Context->key2=>$__Context->val2){;
if($__Context->val2['link']){ ?><li >
                        <a href="<?php echo $__Context->val2['href'] ?>" |cond="$__Context->val2['open_window']=='Y'"><?php echo $__Context->val2['text'] ?></a>
                    </li><?php }} ?>
                </ul><?php } ?>
            </li><?php }} ?>
        </ul>
        <div class="btn-sitemap cursor-p">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</header>
<!-- sitemap -->
<section class="sitemap bg-blue">
    <!-- pc -->
    <div class="wrap hidden-sm hidden-xs">
        <ul class="dp-sp-between menu-wrapper wow fadeIn" style="animation-delay:0.5s;">
            <?php if($__Context->main_menu->list&&count($__Context->main_menu->list))foreach($__Context->main_menu->list as $__Context->key1=>$__Context->val1){;
if($__Context->val1['link']){ ?><li class="menu-wrap wow fadeIn anima">
                <a class="main-menu bold2" href="<?php echo $__Context->val1['href'] ?>" |cond="$__Context->val1['open_window']=='Y'"><?php echo $__Context->val1['text'] ?></a>
                <?php if($__Context->val1['list']){ ?><ul>
                    <?php if($__Context->val1['list']&&count($__Context->val1['list']))foreach($__Context->val1['list'] as $__Context->key2=>$__Context->val2){;
if($__Context->val2['link']){ ?><li  >
                        <a class="sub-menu" href="<?php echo $__Context->val2['href'] ?>" |cond="$__Context->val2['open_window']=='Y'"><?php echo $__Context->val2['text'] ?></a>
                    </li><?php }} ?>
                </ul><?php } ?>
            </li><?php }} ?>
        </ul>
        <button type="button" class="sitemap-close">
            <span class="icon-x"></span>
        </button>        
    </div>
    <!-- mobile -->
        <div class="wrap hidden-lg hidden-md">
        <ul class="dp-sp-between menu-wrapper">
            <!-- 1차 메뉴 -->
            <?php if($__Context->main_menu->list&&count($__Context->main_menu->list))foreach($__Context->main_menu->list as $__Context->key1=>$__Context->val1){ ?><li class="flex">
                <span class="menu-wrap main-menu bold2"><?php echo $__Context->val1['text'] ?></span>
                <!-- 2차 메뉴 -->
                <?php if($__Context->val1['list']){ ?><div class="sub-wrap">
                    <ul class="fadeIn wow" style="animation-delay: 0.2s;">
                        <?php if($__Context->val1['list']&&count($__Context->val1['list']))foreach($__Context->val1['list'] as $__Context->key2=>$__Context->val2){;
if($__Context->val2['link']){ ?><li>
                            <a class="sub-menu light1" href="<?php echo $__Context->val2['href'] ?>"><?php echo $__Context->val2['text'] ?>
                                <i class="bi bi-chevron-right"></i>
                            </a>
                        </li><?php }} ?>
                    </ul>
                </div><?php } ?>
            </li><?php } ?>
        </ul>
        <button type="button" class="sitemap-close">
            <span class="icon-x"></span>
        </button>
    </div>
    <ul class="sns-box dp-flex">
        <li class="sns-circle">
            <a href="https://www.youtube.com/c/BusanEnm" target="_blank" class="dp-center">
                <img src="/layouts/enm/img/main/site_sns_01.png" alt="유튜브아이콘">
            </a>
        </li>
        <li class="sns-circle">
            <a href="https://pf.kakao.com/_pivlj" target="_blank" class="dp-center">
                <img src="/layouts/enm/img/main/site_sns_02.png" alt="카카오아이콘">
            </a>
        </li>
        <li class="sns-circle">
            <a href="https://www.instagram.com/busan_enm/" class="dp-center" target="_blank">
                <img src="/layouts/enm/img/main/site_sns_03.png" alt="인스타아이콘">
            </a>
        </li>
        <li class="sns-circle">
            <a href="https://enm0919.iwinv.net/index.php?act=dispMemberLoginForm" class="dp-center">
                <img src="/layouts/enm/img/main/site_sns_04.png" alt="관리자아이콘">
            </a>
        </li>
    </ul>
</section>
<script>
    wow = new WOW(
        {
            animateClass: 'animate' // old default
        }
    )
    wow.init();
</script>
<script>
$(document).ready(function(){
    if(window.location.pathname === "/" || window.location.pathname === "/index") {
        $(window).resize(function(){ 
            if (window.innerWidth > 1025) {  // 다바이스 크기가 1024이상일때 
            
                $(document).on('scroll', function(){
                    if($(window).scrollTop() > 100){
                        $('header').css('background-color','#ffffff');
                        $('header').css('border-bottom','1px solid #e1e1e1');
                        $('.gnb .menu .gnb-list').hover(function(){
                            $('.gnb-list .second-menu').addClass('sub-menu-hover');
                        });
                    }else{
                        $('header').css('background-color','rgb(255 255 255 / 60%)');
                        $('header').css('border-bottom','none');
                        $('.gnb .menu .gnb-list').hover(function(){
                            $('.gnb-list .second-menu').removeClass('sub-menu-hover');
                        });
                    }
                });
            } else {
                
                $(document).on('scroll', function(){
                    if($(window).scrollTop() > 100){
                        
                    }else{
                    }
                });
            }
        
        }).resize(); 
            
    }else{
        $('header').css('background-color','#ffffff');
        $('header').css('border-bottom','1px solid #e1e1e1');
        $('.gnb .menu .gnb-list').hover(function(){
            $('.gnb-list .second-menu').addClass('sub-menu-hover');
        });
    }
});
</script>