<?php if(!defined("__XE__"))exit;?>
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('layouts/enm','preferences.html') ?>
<!-- header -->
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('layouts/enm/include','header.html') ?>
<!-- floating -->
<div class="floating hidden">
    <a href="https://pf.kakao.com/_pivlj" class="float-k f-center">
        <img src="/layouts/enm/img/main/float-01.png" alt="카카오채널 바로가기">
        <span>카카오채널</span>
    </a>
    <a href="https://www.youtube.com/c/BusanEnm" class="float-y f-center">
        <img src="/layouts/enm/img/main/float-02.png" alt="유튜브 바로가기">
        <span class="cl-white">유튜브</span>
    </a>
    <a href="https://www.instagram.com/busan_enm/" class="float-i f-center">
        <img src="/layouts/enm/img/main/float-03.png" alt="인스타 바로가기">
        <span class="cl-white">인스타그램</span>
    </a>
    <div class="gotop f-center">
        <img src="/layouts/enm/img/main/float-04.png" alt="최상단으로">
    </div>
</div>
<!-- main section -->
<?php if( $__Context->mid == 'index' && !$__Context->act){ ?><div class="main-con-wrap">
    <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('layouts/enm/include','visual.html') ?>
    <section class="con con1">
        <div class="row  scroll_on type_bottom">
            <div class="col-lg-6 col-sm-12 play-sermon">
                <div class="sample-widget"></div>
            </div>
            <div class="col-lg-6 col-sm-12 domestic">
                <div class="item col-lg-6 col-xs-6 mb-30">
                    <a href="/sub02_02">
                        <img src="/layouts/enm/img/main/main_box01.jpg" alt="목장 이동"/>
                        <h2 class="cl-white bold2">목장</h2>
                    </a>
                </div>
                <div class="item col-lg-6 col-xs-6 mb-30">
                    <a href="/sub02_0301">
                        <img src="/layouts/enm/img/main/main_box02.jpg" alt="청년캠퍼스 이동"/>
                        <h2 class="cl-white bold2">청년 캠퍼스</h2>
                    </a>
                </div>
                <div class="item col-lg-6 col-xs-6">
                    <a href="/sub02_0302">
                        <img src="/layouts/enm/img/main/main_box03.jpg" alt="엘틴캠퍼스 이동"/>
                        <h2 class="cl-white bold2">엘틴 캠퍼스</h2>
                    </a>
                </div>
                <div class="item col-lg-6 col-xs-6">
                    <a href="/sub02_0303">
                        <img src="/layouts/enm/img/main/main_box04.jpg" alt="주니어캠퍼스 이동"/>
                        <h2 class="cl-white bold2">주니어 캠퍼스</h2>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <section class="con con2 flex scroll_on type_bottom">
        <a href="/sub03_01" class="f-column">
            <img src="/layouts/enm/img/main/icon_quick01.png" / alt="해외선교 이동">
            <h2>해외선교</h2>
        </a>
        <a href="/sub02_0304" class="f-column">
            <img src="/layouts/enm/img/main/icon_quick02.png" / alt="오투아카데미 이동">
            <h2>오투아카데미</h2>
        </a>
        <a href="/sub03_01" class="f-column">
            <img src="/layouts/enm/img/main/icon_quick03.png" / alt="금요성령집회 이동">
            <h2>금요성령집회</h2>
        </a>
        <a href="https://enm0919.iwinv.net/sub04_02" class="f-column">
            <img src="/layouts/enm/img/main/icon_quick04.png" / alt="집회·세미나 이동">
            <h2>집회 · 세미나</h2>
        </a>
    </section>
    <section class="con con3 row scroll_on type_bottom">
        <div class="col-lg-6 col-sm-6 col-xs-12 item h100">
            <div class="album bg-grey h100">
                <div class="title-wrap">
                    <a href="https://enm0919.iwinv.net/sub05_02">
                        <span class="eng-tit cl-blue bold3">SEGERO Album</span>
                        <p class="title bold2">세계로 앨범</p>
                    </a>
                </div>
                <div class="hidden-xs hidden-sm">
                    <img class="zbxe_widget_output" widget="content" skin="album" colorset="layout" content_type="document" module_srls="216" list_type="gallery" tab_type="none" markup_type="list" list_count="2" cols_list_count="2" page_count="1" subject_cut_size="50" option_view="thumbnail,title" show_browser_title="N" show_comment_count="N" show_trackback_count="N" show_category="N" show_icon="N" order_target="regdate" order_type="desc" thumbnail_type="crop" thumbnail_width="295" thumbnail_height="190" />
                </div>
                <div class="hidden-lg hidden-md">
                    <img class="zbxe_widget_output" widget="swiperSlider" skin="default" identifying_way="use_session" module_srls="216" list_count="3" order_target="list_order" order_type="desc" option_view="title" direction="false" pager="true" slide_max_width="500" slide_height="200" pause="2" ani="fade" subject_cut_size="50" subject_font_size="17" content_font_size="14" content_position="center" content_align="center" thumbnail_type="ratio" hyperlink_src="article" hyperlink_target="N" />
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-sm-6 col-xs-12 item h100">
            <div class="news bg-grey h100 news_mb">
                <div class="title-wrap">
                    <a href="https://enm0919.iwinv.net/sub05_01">
                        <span class="eng-tit cl-blue bold3">SEGERO News</span>
                        <p class="title bold2">세계로 소식</p>
                    </a>
                </div>
                <img class="zbxe_widget_output" widget="content" skin="default" colorset="white" content_type="document" module_srls="177" list_type="normal" tab_type="none" markup_type="list" list_count="5" page_count="1" option_view="title,regdate" show_browser_title="N" show_comment_count="N" show_trackback_count="N" show_category="N" show_icon="N" order_target="regdate" order_type="desc" thumbnail_type="crop" />
            </div>
        </div>
    </section>
    <section class="con con4 flex scroll_on type_bottom">
        <a href="https://www.youtube.com/c/BusanEnm" class="bg-grey f-column" target="_blank">
            <div class="bg-dark f-center">
                <img src="/layouts/enm/img/main/icon_sns01.png" / alt="유튜브 이동">
            </div>
            <h4 class="bold2">부산세계로 youtube 채널</h4>
        </a>
        <a href="https://pf.kakao.com/_pivlj" class="bg-grey f-column" target="_blank">
           <div class="bg-dark f-center">
                <img src="/layouts/enm/img/main/icon_sns02.png" / alt="카카오채널 이동">
            </div>
            <h4 class="bold2">부산세계로 카카오 채널</h4>
        </a>
        <a href="/sub02_01" class="bg-grey f-column">
            <div class="bg-dark f-center">
                <img src="/layouts/enm/img/main/icon_sns03.png" / alt="새가족소개 이동">
            </div>
            <h4 class="bold2">새가족 소개</h4>
        </a>
        <a href="/sub01_07" class="bg-grey f-column">
            <div class="bg-dark f-center">
                <img src="/layouts/enm/img/main/icon_sns04.png" / alt="오시는길 이동">
            </div>
            <h4 class="bold2">오시는 길</h4>
        </a>
    </section>
    <section class="con con5">
        <div class="offertory w-1400 h100 scroll_on type_bottom">
            <div class="title-wrap">
                <span class="eng-tit cl-blue bold3">Offertory</span>
                <p class="title bold2">헌금계좌 안내</p>
            </div>
            <ul class="bg-white">
                <li class="fac">
                    <span class="fjc"><img src="/layouts/enm/img/main/svg_offer_01.svg" /></span>
                    <div class="h100">부산은행<h3 class="bold2">188-01-000701-3</h3>세계로선교회</div>
                </li>
                <li class="fac">
                    <span class="fjc"><img src="/layouts/enm/img/main/svg_offer_02.svg" /></span>
                    <div class="h100">부산은행<h3 class="bold2">188-13-000167-1</h3>세계로선교회</div>
                </li>
                <li class="fac">
                    <span class="fjc"><img src="/layouts/enm/img/main/svg_offer_03.svg" /></span>
                    <div class="h100">부산은행<h3 class="bold2">101-2052-6997-00</h3>세계로선교회</div>
                </li>
            </ul>
        </div>
    </section>
</div><?php } ?>
<!-- Sub Section -->
<?php if( $__Context->mid != 'index' || $__Context->act ){ ?><div class="sub-section">
    <!-- Sub Visual -->
    <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('layouts/enm/include','sub_visual.html') ?>
    <!-- Sub Contents -->
    <div class="sub-contents">
        
        <?php if($__Context->mid == 'sub03_03' || $__Context->mid == 'sub03_04' || $__Context->mid == 'sub03_05' || $__Context->mid == 'sub04_01' || $__Context->mid == 'sub04_02' || $__Context->mid == 'sub04_03' || $__Context->mid == 'sub04_04' || $__Context->mid == 'sub05_01' || $__Context->mid == 'sub05_02'){ ?>
        <?php if($__Context->main_menu->list&&count($__Context->main_menu->list))foreach($__Context->main_menu->list as $__Context->key1=>$__Context->val1){;
if($__Context->val1['selected']){ ?>
            <?php if($__Context->val1['list']&&count($__Context->val1['list']))foreach($__Context->val1['list'] as $__Context->key2=>$__Context->val2){;
if($__Context->val2['selected']){ ?><div class="board-title light1">
                <strong class="bold3"><?php echo $__Context->val2['link'] ?></strong>
                <h5 class="cl-7c bold3">천하만민이 복을 받으리라</h5>
            </div><?php }} ?>
        <?php }} ?>
        <?php } ?>
        
        <?php if($__Context->mid == "123" && !$__Context->document_srl){ ?>
        <div>
            <img class="zbxe_widget_output" widget="content" skin="album03_04" content_type="document" module_srls="200" list_type="image_title_content" tab_type="none" markup_type="table" list_count="1" cols_list_count="1" page_count="1" option_view="title,regdate,nickname" show_browser_title="Y" show_comment_count="Y" show_trackback_count="Y" show_category="Y" show_icon="Y" order_target="regdate" order_type="desc" thumbnail_type="crop" thumbnail_width="500" />
        </div>
        <?php }else{ ?>
        <?php } ?>
        <?php if($__Context->mid == 'sub02_0305'){ ?>
        <?php if($__Context->main_menu->list&&count($__Context->main_menu->list))foreach($__Context->main_menu->list as $__Context->key1=>$__Context->val1){;
if($__Context->val1['selected']){ ?>
            <?php if($__Context->val1['list']&&count($__Context->val1['list']))foreach($__Context->val1['list'] as $__Context->key2=>$__Context->val2){;
if($__Context->val2['selected']){ ?>
                <?php if($__Context->val2['list']&&count($__Context->val2['list']))foreach($__Context->val2['list'] as $__Context->key3=>$__Context->val3){;
if($__Context->val3['selected']){ ?><div class="board-title light1">
                    <strong class="bold3"><?php echo $__Context->val3['link'] ?></strong>
                    <h5 class="cl-7c bold3">천하만민이 복을 받으리라</h5>
                </div><?php }} ?>
            <?php }} ?>
        <?php }} ?>
        <?php } ?>
        <?php echo $__Context->content ?>
    </div>
</div><?php } ?>
<!-- Footer -->
<footer>
    <div class="f-wrap flex between">
        <div>
            <div class="f-logo">
                <img src="/layouts/enm/img/main/logo_w.png" alt="">
            </div>
            <div class="f-txt">
                <p> 
                    <span class="cl-white light1">A &ensp;부산 금정구 금샘로 319</span><br class="hidden-lg hidden-md hidden-sm" >
                    <span class="cl-white light1">T &ensp;051-518-4370</span>
                </p>
                <p>COPYRIGHT (C) 2023 Busan ENM. ALL RIGHTS RESERVED.</p>
            </div>
        </div>
        <div>
            <a href="" class="btn-staff cl-white">STAFF</a>
        </div>
    </div>
</footer>
<script>
    wow = new WOW(
        {
            animateClass: 'animate' // old default
        }
    )
    wow.init();
    
    $(document).ready(function() {
        $('.gotop').bind('click', function() {
            $('html, body').animate({scrollTop: '0'}, 300);
        });
        $(window).on('scroll',function(){
                if($(window).scrollTop()){
                    $('.floating').removeClass('hidden');
                }else{
                    $('.floating').addClass('hidden');
                }
            });
    });
</script>
<!-- JavaScripts 끝 -->
<script>
    $(document).ready(function(){
        const $counters = $(".scroll_on");
        const exposurePercentage = 100;
        const loop = false; 
        // 윈도우의 스크롤 이벤트를 모니터링합니다.
        $(window).on('scroll', function() {
            // 각 "scroll_on" 클래스를 가진 요소에 대해 반복합니다.
            $counters.each(function() {
            const $el = $(this);
            // 요소의 위치 정보를 가져옵니다.
            const rect = $el[0].getBoundingClientRect();
            const winHeight = window.innerHeight; // 현재 브라우저 창의 높이
            const contentHeight = rect.bottom - rect.top; // 요소의 높이
            
            // 요소가 화면에 특정 비율만큼 노출될 때 처리합니다.
            if (rect.top <= winHeight - (contentHeight * exposurePercentage / 350) && rect.bottom >= (contentHeight * exposurePercentage / 100)) {
                $el.addClass('active');
            }
            // 요소가 화면에서 완전히 사라졌을 때 처리합니다.
            if (loop && (rect.bottom <= 0 || rect.top >= window.innerHeight)) {
                $el.removeClass('active');
            }
    });
}).scroll();
    });
    
</script>
<!-- 스크롤 효과 -->