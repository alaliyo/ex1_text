<?php if(!defined("__XE__")) exit(); $layout_info = new stdClass;
$layout_info->site_srl = 0;
$layout_info->layout = 'enm';
$layout_info->type = NULL;
$layout_info->path = './layouts/enm/';
$layout_info->title = '동삼교회';
$layout_info->description = '
        우리기획 : doweb (web@doweb.kr)		
    ';
$layout_info->version = '0.0.1';
$layout_info->date = '20210701';
$layout_info->homepage = NULL;
$layout_info->layout_srl = $layout_srl;
$layout_info->layout_title = $layout_title;
$layout_info->license = NULL;
$layout_info->license_link = NULL;
$layout_info->layout_type = 'P';
$layout_info->author = array();
$layout_info->author[0] = new stdClass;
$layout_info->author[0]->name = 'doweb';
$layout_info->author[0]->email_address = 'web@doweb.kr';
$layout_info->author[0]->homepage = 'http://http://doweb.kr/';
$layout_info->extra_var = new stdClass;
$layout_info->extra_var->logo_img = new stdClass;
$layout_info->extra_var->logo_img->group = '기본 설정';
$layout_info->extra_var->logo_img->title = '◈ 로고 이미지';
$layout_info->extra_var->logo_img->type = 'image';
$layout_info->extra_var->logo_img->value = $vars->logo_img;
$layout_info->extra_var->logo_img->description = '로고 이미지를 업로드하세요.(세로 60px 권장)';
$layout_info->extra_var->index_url = new stdClass;
$layout_info->extra_var->index_url->group = '기본 설정';
$layout_info->extra_var->index_url->title = 'ㄴ로고 링크';
$layout_info->extra_var->index_url->type = 'text';
$layout_info->extra_var->index_url->value = $vars->index_url;
$layout_info->extra_var->index_url->description = '로고 이미지 클릭 시 이동할 메인 페이지 링크 값을 입력하세요.(예시. home)';
$layout_info->extra_var->slide_num = new stdClass;
$layout_info->extra_var->slide_num->group = '슬라이드';
$layout_info->extra_var->slide_num->title = '◈ 슬라이드 수';
$layout_info->extra_var->slide_num->type = 'select';
$layout_info->extra_var->slide_num->value = $vars->slide_num;
$layout_info->extra_var->slide_num->description = '슬라이드 수를 선택하세요. 기본 3';
$layout_info->extra_var->slide_num->options = array();
$layout_info->extra_var->slide_num->options['6'] = new stdClass;
$layout_info->extra_var->slide_num->options['6']->val = '6';
$layout_info->extra_var->slide_num->options['5'] = new stdClass;
$layout_info->extra_var->slide_num->options['5']->val = '5';
$layout_info->extra_var->slide_num->options['4'] = new stdClass;
$layout_info->extra_var->slide_num->options['4']->val = '4';
$layout_info->extra_var->slide_num->options['3'] = new stdClass;
$layout_info->extra_var->slide_num->options['3']->val = '3';
$layout_info->extra_var->slide_num->options['2'] = new stdClass;
$layout_info->extra_var->slide_num->options['2']->val = '2';
$layout_info->extra_var->slide_num->options['1'] = new stdClass;
$layout_info->extra_var->slide_num->options['1']->val = '1(정지)';
$layout_info->extra_var->promo_height = new stdClass;
$layout_info->extra_var->promo_height->group = '슬라이드';
$layout_info->extra_var->promo_height->title = '◈ 슬라이드 세로';
$layout_info->extra_var->promo_height->type = 'text';
$layout_info->extra_var->promo_height->value = $vars->promo_height;
$layout_info->extra_var->promo_height->description = '슬라이드 세로 값을 입력하세요. (%, px. 기본 30%)';
$layout_info->extra_var->promo_time = new stdClass;
$layout_info->extra_var->promo_time->group = '슬라이드';
$layout_info->extra_var->promo_time->title = '◈ 인터벌';
$layout_info->extra_var->promo_time->type = 'text';
$layout_info->extra_var->promo_time->value = $vars->promo_time;
$layout_info->extra_var->promo_time->description = '슬라이드 정시 속도를 입력하세요. 비워두면 기본 5000(1초 = 1000)';
$layout_info->extra_var->slide_img1 = new stdClass;
$layout_info->extra_var->slide_img1->group = '슬라이드';
$layout_info->extra_var->slide_img1->title = '1) 슬라이드 이미지';
$layout_info->extra_var->slide_img1->type = 'image';
$layout_info->extra_var->slide_img1->value = $vars->slide_img1;
$layout_info->extra_var->slide_img1->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img2 = new stdClass;
$layout_info->extra_var->slide_img2->group = '슬라이드';
$layout_info->extra_var->slide_img2->title = '2) 슬라이드 이미지';
$layout_info->extra_var->slide_img2->type = 'image';
$layout_info->extra_var->slide_img2->value = $vars->slide_img2;
$layout_info->extra_var->slide_img2->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img3 = new stdClass;
$layout_info->extra_var->slide_img3->group = '슬라이드';
$layout_info->extra_var->slide_img3->title = '3) 슬라이드 이미지';
$layout_info->extra_var->slide_img3->type = 'image';
$layout_info->extra_var->slide_img3->value = $vars->slide_img3;
$layout_info->extra_var->slide_img3->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img4 = new stdClass;
$layout_info->extra_var->slide_img4->group = '슬라이드';
$layout_info->extra_var->slide_img4->title = '4) 슬라이드 이미지';
$layout_info->extra_var->slide_img4->type = 'image';
$layout_info->extra_var->slide_img4->value = $vars->slide_img4;
$layout_info->extra_var->slide_img4->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img5 = new stdClass;
$layout_info->extra_var->slide_img5->group = '슬라이드';
$layout_info->extra_var->slide_img5->title = '5) 슬라이드 이미지';
$layout_info->extra_var->slide_img5->type = 'image';
$layout_info->extra_var->slide_img5->value = $vars->slide_img5;
$layout_info->extra_var->slide_img5->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img6 = new stdClass;
$layout_info->extra_var->slide_img6->group = '슬라이드';
$layout_info->extra_var->slide_img6->title = '6) 슬라이드 이미지';
$layout_info->extra_var->slide_img6->type = 'image';
$layout_info->extra_var->slide_img6->value = $vars->slide_img6;
$layout_info->extra_var->slide_img6->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_num_m = new stdClass;
$layout_info->extra_var->slide_num_m->group = '모바일 슬라이드';
$layout_info->extra_var->slide_num_m->title = '◈ 모바일 슬라이드 수';
$layout_info->extra_var->slide_num_m->type = 'select';
$layout_info->extra_var->slide_num_m->value = $vars->slide_num_m;
$layout_info->extra_var->slide_num_m->description = '슬라이드 수를 선택하세요. 기본 3';
$layout_info->extra_var->slide_num_m->options = array();
$layout_info->extra_var->slide_num_m->options['6'] = new stdClass;
$layout_info->extra_var->slide_num_m->options['6']->val = '6';
$layout_info->extra_var->slide_num_m->options['5'] = new stdClass;
$layout_info->extra_var->slide_num_m->options['5']->val = '5';
$layout_info->extra_var->slide_num_m->options['4'] = new stdClass;
$layout_info->extra_var->slide_num_m->options['4']->val = '4';
$layout_info->extra_var->slide_num_m->options['3'] = new stdClass;
$layout_info->extra_var->slide_num_m->options['3']->val = '3';
$layout_info->extra_var->slide_num_m->options['2'] = new stdClass;
$layout_info->extra_var->slide_num_m->options['2']->val = '2';
$layout_info->extra_var->slide_num_m->options['1'] = new stdClass;
$layout_info->extra_var->slide_num_m->options['1']->val = '1(정지)';
$layout_info->extra_var->promo_height_m = new stdClass;
$layout_info->extra_var->promo_height_m->group = '모바일 슬라이드';
$layout_info->extra_var->promo_height_m->title = '◈ 모바일 슬라이드 세로';
$layout_info->extra_var->promo_height_m->type = 'text';
$layout_info->extra_var->promo_height_m->value = $vars->promo_height_m;
$layout_info->extra_var->promo_height_m->description = '슬라이드 세로 값을 입력하세요. (%, px. 기본 30%)';
$layout_info->extra_var->promo_time_m = new stdClass;
$layout_info->extra_var->promo_time_m->group = '모바일 슬라이드';
$layout_info->extra_var->promo_time_m->title = '◈ 인터벌';
$layout_info->extra_var->promo_time_m->type = 'text';
$layout_info->extra_var->promo_time_m->value = $vars->promo_time_m;
$layout_info->extra_var->promo_time_m->description = '슬라이드 정시 속도를 입력하세요. 비워두면 기본 5000(1초 = 1000)';
$layout_info->extra_var->slide_img1_m = new stdClass;
$layout_info->extra_var->slide_img1_m->group = '모바일 슬라이드';
$layout_info->extra_var->slide_img1_m->title = '1) 슬라이드 이미지';
$layout_info->extra_var->slide_img1_m->type = 'image';
$layout_info->extra_var->slide_img1_m->value = $vars->slide_img1_m;
$layout_info->extra_var->slide_img1_m->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img2_m = new stdClass;
$layout_info->extra_var->slide_img2_m->group = '모바일 슬라이드';
$layout_info->extra_var->slide_img2_m->title = '2) 슬라이드 이미지';
$layout_info->extra_var->slide_img2_m->type = 'image';
$layout_info->extra_var->slide_img2_m->value = $vars->slide_img2_m;
$layout_info->extra_var->slide_img2_m->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img3_m = new stdClass;
$layout_info->extra_var->slide_img3_m->group = '모바일 슬라이드';
$layout_info->extra_var->slide_img3_m->title = '3) 슬라이드 이미지';
$layout_info->extra_var->slide_img3_m->type = 'image';
$layout_info->extra_var->slide_img3_m->value = $vars->slide_img3_m;
$layout_info->extra_var->slide_img3_m->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img4_m = new stdClass;
$layout_info->extra_var->slide_img4_m->group = '모바일 슬라이드';
$layout_info->extra_var->slide_img4_m->title = '4) 슬라이드 이미지';
$layout_info->extra_var->slide_img4_m->type = 'image';
$layout_info->extra_var->slide_img4_m->value = $vars->slide_img4_m;
$layout_info->extra_var->slide_img4_m->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img5_m = new stdClass;
$layout_info->extra_var->slide_img5_m->group = '모바일 슬라이드';
$layout_info->extra_var->slide_img5_m->title = '5) 슬라이드 이미지';
$layout_info->extra_var->slide_img5_m->type = 'image';
$layout_info->extra_var->slide_img5_m->value = $vars->slide_img5_m;
$layout_info->extra_var->slide_img5_m->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var->slide_img6_m = new stdClass;
$layout_info->extra_var->slide_img6_m->group = '모바일 슬라이드';
$layout_info->extra_var->slide_img6_m->title = '6) 슬라이드 이미지';
$layout_info->extra_var->slide_img6_m->type = 'image';
$layout_info->extra_var->slide_img6_m->value = $vars->slide_img6_m;
$layout_info->extra_var->slide_img6_m->description = '슬라이드 이미지를 업로드하세요.';
$layout_info->extra_var_count = 20;
$layout_info->menu_count = 1;
$layout_info->menu = new stdClass;
$layout_info->default_menu = 'main_menu';
$layout_info->menu->main_menu = new stdClass;
$layout_info->menu->main_menu->name = 'main_menu';
$layout_info->menu->main_menu->title = '메인 메뉴';
$layout_info->menu->main_menu->maxdepth = NULL;
$layout_info->menu->main_menu->menu_srl = $vars->main_menu;
$layout_info->menu->main_menu->xml_file = "./files/cache/menu/".$vars->main_menu.".xml.php";
$layout_info->menu->main_menu->php_file = "./files/cache/menu/".$vars->main_menu.".php";