<?php if(!defined("__XE__"))exit;?><div class="swiper visual wow fadeIn" style="animation-delay:.5s">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <img src="/layouts/enm/img/main/main_bg.jpg" alt="" class="hidden-xs">
            <img src="/layouts/enm/img/main/m_main_bg.jpg" alt="" class="hidden-sm hidden-md hidden-lg">
        </div>
        <div class="swiper-slide">
            <img src="/layouts/enm/img/main/main_bg02.jpg" alt="" class="hidden-xs">
            <img src="/layouts/enm/img/main/m_main_bg02.jpg" alt="" class="hidden-sm hidden-md hidden-lg">
        </div>
    </div>
</div>
<script>
    var visual = new Swiper(".visual", {
        loop : true,
        autoplay: {
            delay: 4500,
            disableOnInteraction: false,
        },
    });
</script>