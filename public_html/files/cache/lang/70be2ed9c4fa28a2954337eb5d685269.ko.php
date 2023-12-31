<?php
$lang->cmd_supercache_module_name='슈퍼 캐시';
$lang->cmd_supercache_config_basic='캐시 방식 설정';
$lang->cmd_supercache_config_basic_help='슈퍼 캐시 모듈은 다량의 임시 데이터를 생성합니다. 이 데이터를 어디에 저장할지 선택하시기 바랍니다.<br>별도로 설정하지 않을 경우 XE 설치 경로 아래 <span class="console_font">files/supercache</span> 폴더에 저장합니다.';
$lang->cmd_supercache_config_basic_rhymix_help='라이믹스 사용자는 <a href="./index.php?module=admin&amp;act=dispAdminConfigAdvanced">[시스템 설정 / 고급 설정]</a> 메뉴에서 캐시 방식을 변경하실 수 있습니다.';
$lang->cmd_supercache_core_object_cache='캐시 방식 설정';
$lang->cmd_supercache_flush_cache='캐시 비우기';
$lang->cmd_supercache_flush_cache_help='시스템 설정, 모듈 설정, 스킨 등을 변경한 후 문제가 발생한다면 위의 단추를 클릭해 주십시오.<br>주의: 문제가 있을 때만 클릭하세요. 평상시에 자주 사용하면 캐시 효율이 떨어질 수 있습니다.';
$lang->cmd_supercache_config_full_cache='전체화면 캐시';
$lang->cmd_supercache_config_full_cache_help='웹 페이지 전체를 캐시에 저장해 두었다가 다른 방문자들에게도 똑같이 뿌려 주는 기능입니다.<br>로그인하지 않은 방문자가 대부분인 블로그, 단순 홍보성 사이트 등에서 큰 효과를 얻을 수 있습니다.<br><span class="warning">회원들의 활동이 많은 커뮤니티 사이트에서 사용할 경우 주의가 필요합니다.</span>';
$lang->cmd_supercache_full_cache_basic='기본 설정';
$lang->cmd_supercache_full_cache_use='전체화면 캐시 사용';
$lang->cmd_supercache_full_cache_use_pc='PC';
$lang->cmd_supercache_full_cache_use_mobile='모바일';
$lang->cmd_supercache_full_cache_use_pushapp='푸시앱';
$lang->cmd_supercache_full_cache_use_robot='로봇';
$lang->cmd_supercache_full_cache_use_help='선택한 종류의 방문자 중 로그인하지 않은 방문자에게는 캐시된 화면을 표시합니다.<br>새로 등록된 글과 댓글, 스킨 및 레이아웃 수정 내역 등이 즉시 반영되지 않을 수도 있습니다.';
$lang->cmd_supercache_full_cache_type='전체화면 캐시 대상';
$lang->cmd_supercache_full_cache_type_module='모듈(게시판) 초기화면 및 목록 페이지';
$lang->cmd_supercache_full_cache_type_document='문서(글읽기) 페이지';
$lang->cmd_supercache_full_cache_type_other='기타 화면';
$lang->cmd_supercache_full_cache_type_help='선택한 종류의 페이지에 전체화면 캐시가 적용됩니다. 사이트 특성에 따라 조절하십시오.<br><span class="warning">경고: &quot;기타 화면&quot; 선택시 오류가 발생할 가능성이 높으므로 불가피한 경우 외에는 권장하지 않습니다.</span><br>위의 경고에도 불구하고 &quot;기타 화면&quot; 옵션을 활성화하려면 <a href="#" class="sc_enable_other_pages">여기</a>를 클릭하십시오.';
$lang->cmd_supercache_full_cache_exclude_modules='캐시 예외 모듈';
$lang->cmd_supercache_full_cache_exclude_modules_help='선택한 모듈(게시판)에는 전체화면 캐시를 적용하지 않습니다. 캐시 사용시 문제가 발생하는 모듈은 제외하시기 바랍니다.';
$lang->cmd_supercache_full_cache_exclude_acts='캐시 예외 액션';
$lang->cmd_supercache_full_cache_exclude_acts_help='여기에 나열한 액션(act)은 캐시에서 제외합니다. 쉼표, 공백, 줄바꿈 등으로 구분하여 작성할 수 있습니다.<br>주의: 위에서 &quot;기타 화면&quot;을 선택한 경우에만 적용됩니다.';
$lang->cmd_supercache_full_cache_exclude_cookies='캐시 예외 쿠키';
$lang->cmd_supercache_full_cache_exclude_cookies_help='여기에 나열한 쿠키가 있는 방문자는 로그인한 방문자와 마찬가지로 취급하여 전체화면 캐시에서 제외합니다.<br>쉼표, 공백, 줄바꿈 등으로 구분하여 작성할 수 있습니다.';
$lang->cmd_supercache_full_cache_separate_cookies='별도로 캐시할 쿠키';
$lang->cmd_supercache_full_cache_separate_cookies_help='여기에 나열한 쿠키가 있는 방문자는 각 쿠키의 값에 따라 별도의 캐시를 적용합니다.<br>쉼표, 공백, 줄바꿈 등으로 구분하여 작성할 수 있습니다.';
$lang->cmd_supercache_full_cache_document_action='문서 작성시 자동 갱신';
$lang->cmd_supercache_full_cache_document_action_help='새 글 작성, 수정, 삭제 등이 일어나면 선택한 전체 화면 캐시를 자동으로 갱신합니다.<br>주의: 회원들의 활동이 많은 사이트에서는 캐시 효율이 낮아질 수 있습니다.';
$lang->cmd_supercache_full_cache_document_action_refresh_document='해당 문서(글읽기) 페이지';
$lang->cmd_supercache_full_cache_document_action_refresh_module='해당 모듈(게시판) 목록 페이지';
$lang->cmd_supercache_full_cache_document_action_refresh_index='사이트 메인 화면';
$lang->cmd_supercache_full_cache_comment_action='댓글 작성시 자동 갱신';
$lang->cmd_supercache_full_cache_comment_action_help='새 댓글 작성, 수정, 삭제 등이 일어나면 선택한 전체 화면 캐시를 자동으로 갱신합니다.<br>주의: 회원들의 활동이 많은 사이트에서는 캐시 효율이 낮아질 수 있습니다.';
$lang->cmd_supercache_full_cache_duration='캐시 갱신 주기';
$lang->cmd_supercache_full_cache_duration_help='위의 기간이 지나면 전체화면 캐시를 다시 생성합니다. 단위는 \'초\'입니다.';
$lang->cmd_supercache_full_cache_advanced='고급 설정';
$lang->cmd_supercache_full_cache_stampede_protection='스탬피드 방지 기능';
$lang->cmd_supercache_full_cache_stampede_protection_help='캐시 기간이 만료되자마자 동시 요청이 한꺼번에 몰리는 현상을 방지합니다.<br>참고 문서: <a href="https://en.wikipedia.org/wiki/Cache_stampede" target="_blank">Cache Stampede</a>';
$lang->cmd_supercache_full_cache_delay_trigger='전체화면 캐시 처리 지연';
$lang->cmd_supercache_full_cache_delay_trigger_help='전체화면 캐시 처리를 다소 지연시켜 <span class="console_font">before_module_init</span> 시점에 애드온이 실행될 수 있도록 합니다.<br>주의: 설치된 애드온에 따라 성능이 크게 나빠질 수도 있습니다.';
$lang->cmd_supercache_full_cache_use_headers='Cache-Control 헤더 사용';
$lang->cmd_supercache_full_cache_use_headers_help='Cache-Control 헤더를 사용하여 캐싱된 페이지에 대한 반복 요청을 차단합니다.<br><span class="warning">경고: 로그인 후에도 캐싱된 페이지가 표시될 수 있으니 회원 제도가 없는 단순 정보성 사이트에서만 사용하십시오.</span>';
$lang->cmd_supercache_full_cache_use_headers_proxy_too='CDN 또는 프록시 사용시에도 적용';
$lang->cmd_supercache_full_cache_use_headers_proxy_too_help='클라우드플레어 등의 CDN, Varnish 등의 캐싱 프록시 사용시 이 옵션을 선택하면 서버 부하를 더욱 낮출 수 있습니다.<br><span class="warning">경고: 로그인한 사용자와 로그인하지 않은 사용자를 구분하지 못하게 될 수 있습니다.</span>';
$lang->cmd_supercache_full_cache_include_404='404 에러 화면 캐시';
$lang->cmd_supercache_full_cache_include_404_help='존재하지 않는 주소를 요청하는 방문자가 많은 경우, 404 에러 화면을 캐시하면 서버 부하를 낮추는 데 도움이 될 수 있습니다.<br>주의: 없던 주소가 새로 생기는 경우 한동안 계속 404 에러 화면이 나타날 수 있습니다.';
$lang->cmd_supercache_full_cache_incr_view_count='캐시된 문서 조회수 증가';
$lang->cmd_supercache_full_cache_incr_view_count_help='캐시된 페이지를 조회하면 XE의 처리 과정을 대부분 건너뛰기 때문에 조회수가 증가하지 않습니다.<br>이 옵션을 선택하면 캐시된 페이지에서도 조회수를 증가시키지만, 캐시 효율이 떨어질 수 있으니 주의하십시오.';
$lang->cmd_supercache_full_cache_incr_view_count_probabilistic='확률적 추정치 사용';
$lang->cmd_supercache_full_cache_incr_view_count_probabilistic_help='매번 조회수를 증가시키지 않고, 일정한 확률로 한꺼번에 업데이트하여 캐시 효율에 미치는 영향을 최소화합니다.<br>주의: 방문자가 많지 않은 사이트에서는 조회수에 어느 정도 오차가 발생할 수 있습니다.';
$lang->cmd_supercache_config_board_cache='게시판 캐시';
$lang->cmd_supercache_config_board_cache_help='게시판의 글 수가 많아지면 검색, 페이징, 목록 처리 등의 쿼리 소요시간이 전체 로딩 시간의 상당 부분을 차지하게 됩니다.<br>이 문제를 덜어 주는 페이징 캐시 기능은 대형 게시판을 사용하는 커뮤니티 사이트에 적합합니다.<br><span class="warning">XE 및 라이믹스 최신 버전에서만 지원되며, 구 버전에서는 패치가 필요합니다.</span>';
$lang->cmd_supercache_paging_cache_supported='페이징 캐시 지원';
$lang->cmd_supercache_paging_cache_supported_list_replace='페이징 캐시를 사용할 수 있습니다.';
$lang->cmd_supercache_paging_cache_supported_list_replace_x='페이징 캐시를 사용할 수 없습니다. <a href="https://github.com/xpressengine/xe-core/pull/1957" target="_blank">패치</a>';
$lang->cmd_supercache_paging_cache_supported_offset_query='오프셋 쿼리를 사용할 수 있습니다.';
$lang->cmd_supercache_paging_cache_supported_offset_query_x='오프셋 쿼리를 사용할 수 없습니다. <a href="https://github.com/xpressengine/xe-core/pull/1959" target="_blank">패치</a>';
$lang->cmd_supercache_paging_cache='페이징 캐시';
$lang->cmd_supercache_paging_cache_use='페이징 캐시 사용';
$lang->cmd_supercache_paging_cache_use_help='게시판의 글 수와 페이지 수 등을 캐시하여 불필요한 쿼리를 실행하지 않도록 합니다.<br>화면에 표시되는 글 수와 페이지 수에 약간의 오차가 발생할 수 있습니다.';
$lang->cmd_supercache_paging_cache_use_offset_query='오프셋 쿼리 사용';
$lang->cmd_supercache_paging_cache_use_offset_query_help='2페이지 이상의 목록에도 캐시를 적용합니다. 사용하지 않을 경우 각 게시판의 1페이지에만 적용됩니다.<br>오프셋 쿼리를 지원하는 XE 1.8.42 이상 버전이라면 사용을 권장합니다.';
$lang->cmd_supercache_paging_cache_exclude_modules='페이징 캐시 예외 모듈';
$lang->cmd_supercache_paging_cache_exclude_modules_help='선택한 모듈(게시판)에는 페이징 캐시를 적용하지 않습니다. 캐시 사용시 문제가 발생하는 게시판은 제외하시기 바랍니다.<br>위의 &quot;페이징 캐시 사용 조건&quot; 설정을 통해서도 게시판 예외 처리가 가능합니다.';
$lang->cmd_supercache_paging_cache_threshold='페이징 캐시 사용 조건';
$lang->cmd_supercache_paging_cache_threshold_help='게시판의 글 수가 위의 숫자보다 많을 때만 페이징 캐시를 사용합니다.<br>사용량이 적은 게시판에서 불필요한 캐시 요쳥을 방지할 수 있습니다.';
$lang->cmd_supercache_paging_cache_duration='페이징 캐시 갱신 주기';
$lang->cmd_supercache_paging_cache_duration_help='위의 기간이 지나면 페이징 캐시를 삭제하고 다시 계산합니다. 단위는 \'초\'입니다.<br>기간이 지나지 않아도 새 글을 등록하거나 글을 삭제하면 자동으로 반영되니, 큰 문제가 없다면 가능한 길게 설정하시기 바랍니다.';
$lang->cmd_supercache_paging_cache_auto_refresh='페이징 캐시 자동 갱신';
$lang->cmd_supercache_paging_cache_auto_refresh_help='위의 기간과 무관하게, 요청 수가 많아지면 일정한 확률로 캐시를 갱신하여 오차 범위를 줄입니다.<br>예: 2400으로 지정한 경우 약 2400회 요청마다 캐시가 갱신됩니다.';
$lang->cmd_supercache_search_cache='검색 결과 캐시';
$lang->cmd_supercache_search_cache_use='검색 결과 캐시 사용';
$lang->cmd_supercache_search_cache_use_help='시간이 오래 걸리고 서버에 부담을 많이 주는 게시판 검색 결과를 캐시합니다.<br>사용자가 검색 목록과 검색 결과 사이를 왔다갔다하더라도 동일한 검색을 다시 수행하지 않게 됩니다.';
$lang->cmd_supercache_search_cache_supported_list_replace='검색 결과 캐시를 사용할 수 있습니다.';
$lang->cmd_supercache_search_cache_supported_list_replace_x='검색 결과 캐시를 사용할 수 없습니다. <a href="https://github.com/xpressengine/xe-core/pull/1957" target="_blank">패치</a>';
$lang->cmd_supercache_search_cache_duration='검색 결과 캐시 갱신 주기';
$lang->cmd_supercache_search_cache_duration_help='위의 기간이 지나면 검색 결과 캐시를 삭제하고 다시 계산합니다. 단위는 \'초\'입니다.';
$lang->cmd_supercache_search_cache_document_action='문서 작성시 자동 갱신';
$lang->cmd_supercache_search_cache_document_action_help='새 글 작성, 수정, 삭제 등이 일어나면 해당 게시판의 검색 결과 캐시를 자동으로 갱신합니다.<br>주의: 회원들의 활동이 많은 사이트에서는 캐시 효율이 낮아질 수 있습니다.';
$lang->cmd_supercache_search_cache_comment_action='댓글 작성시 자동 갱신';
$lang->cmd_supercache_search_cache_comment_action_help='새 댓글 작성, 수정, 삭제 등이 일어나면 해당 게시판의 검색 결과 캐시를 자동으로 갱신합니다.<br>주의: 회원들의 활동이 많은 사이트에서는 캐시 효율이 낮아질 수 있습니다.';
$lang->cmd_supercache_search_cache_exclude_modules='검색 결과 캐시 예외 모듈';
$lang->cmd_supercache_search_cache_exclude_modules_help='선택한 모듈(게시판)에는 검색 결과 캐시를 적용하지 않습니다. 검색 결과가 실시간으로 갱신되어야 하는 게시판은 제외하시기 바랍니다.<br>검색 기능을 변형 또는 대체하는 다른 모듈을 사용하는 경우 호환되지 않을 수 있으니 예외처리하십시오.';
$lang->cmd_supercache_config_widget_cache='위젯 캐시';
$lang->cmd_supercache_config_widget_cache_help='캐시를 설정하지 않았거나 0분으로 설정한 위젯에도 모두 캐시를 적용하는 기능입니다.<br>위젯이 많은 화면의 로딩 속도와 DB 부하를 크게 줄일 수 있으며, 로그인 사용자가 많은 사이트에서도 효과는 동일합니다.<br><span class="warning">사용자에 따라 내용이 달라져야 하는 위젯은 캐시를 적용하지 않거나 그룹별로 구분하도록 설정해 주십시오.</span>';
$lang->cmd_supercache_widget_cache_basic='기본 설정';
$lang->cmd_supercache_widget_cache_use='위젯 캐시 사용';
$lang->cmd_supercache_widget_cache_use_help='XE의 위젯 캐시를 슈퍼 캐시로 대체하고, 모든 위젯에 강제로 캐시를 적용합니다.<br>캐시를 적용할 위젯의 종류는 아래에서 자세히 선택할 수 있습니다.';
$lang->cmd_supercache_widget_cache_supported='위젯 캐시를 사용할 수 있습니다.';
$lang->cmd_supercache_widget_cache_not_supported='위젯 캐시를 사용할 수 없습니다. SimpleXML을 설치하여 주십시오.';
$lang->cmd_supercache_widget_autoinvalidate_document='문서 작성시 자동 갱신';
$lang->cmd_supercache_widget_autoinvalidate_document_help='새 글 작성, 수정, 삭제 등이 일어나면 해당 게시판을 참조하는 위젯을 자동으로 갱신합니다.<br>주의: 회원들의 활동이 많은 사이트에서는 캐시 효율이 낮아질 수 있습니다.';
$lang->cmd_supercache_widget_autoinvalidate_comment='댓글 작성시 자동 갱신';
$lang->cmd_supercache_widget_autoinvalidate_comment_help='새 댓글 작성, 수정, 삭제 등이 일어나면 해당 게시판을 참조하는 위젯을 자동으로 갱신합니다.<br>주의: 회원들의 활동이 많은 사이트에서는 캐시 효율이 낮아질 수 있습니다.';
$lang->cmd_supercache_widget_cache_per_widget='위젯별 설정';
$lang->cmd_supercache_widget_cache_duration='캐시 기간 (초)';
$lang->cmd_supercache_widget_cache_duration_default='기본 캐시 기간';
$lang->cmd_supercache_widget_cache_duration_help='단위는 \'초\'입니다. 아래에서 별도로 설정한 위젯은 아래의 설정을 따릅니다.';
$lang->cmd_supercache_widget_cache_duration_force='일괄 적용';
$lang->cmd_supercache_widget_cache_duration_force_help='&quot;일괄 적용&quot;을 선택하면 이미 캐시 기간이 따로 지정되어 있는 위젯에도 위에서 설정한 캐시 기간을 강제로 적용합니다.';
$lang->cmd_supercache_widget_cache_group='회원 그룹별 구분';
$lang->cmd_supercache_widget_cache_group_help='&quot;회원 그룹별 구분&quot;을 선택하면 소속 그룹이 같은 회원들끼리 모아서 각각 따로 캐시 처리합니다. 권한에 따라 위젯 내용이 달라져야 하는 경우 유용하나, 캐시 효율이 다소 떨어질 수 있습니다.';
$lang->cmd_supercache_widget_cache_exclude_modules='위젯 캐시 예외 모듈';
$lang->cmd_supercache_widget_cache_exclude_modules_help='선택한 모듈(게시판)에서는 위젯 캐시를 사용하지 않습니다. 캐시 사용시 문제가 발생하는 모듈은 제외하시기 바랍니다.';
$lang->cmd_supercache_widget_cache_duration_per_widget_help='&quot;캐시 기간&quot;을 비워 두면 위에서 설정한 기본 캐시 기간이 적용됩니다.';
$lang->cmd_supercache_config_thumbnail_cache='섬네일 캐시';
$lang->cmd_supercache_config_other='기타 설정';
$lang->cmd_supercache_config_other_help='사이트 성능 개선에 도움을 줄 수 있는 여러 가지 설정들을 모아 놓은 화면입니다.';
$lang->cmd_supercache_disable_post_search='POST 이중 검색 차단';
$lang->cmd_supercache_disable_post_search_help='스케치북 등 일부 게시판 스킨에서 동일한 검색을 POST와 GET으로 2번 요청하는 버그를 우회합니다.<br>POST 요청으로 게시판 검색 시도시 실제 검색을 수행하지 않고 건너뜁니다.';
$lang->cmd_supercache_block_css_request='잘못된 CSS 요청 차단';
$lang->cmd_supercache_block_css_request_help='일부 레이아웃과 스킨에서 <span class="console_font">&lt;link&gt;</span> 태그의 속성이 잘못되어 페이지 전체를 CSS로 다시 로딩하려고 시도하는 버그를 우회합니다.<br>이렇게 잘못된 요청이 감지되면 즉시 실행을 종료하여 서버 자원을 절약합니다.';
$lang->cmd_supercache_block_img_request='잘못된 이미지 요청 차단';
$lang->cmd_supercache_block_img_request_help='위와 같은 기능이나, 페이지 전체를 <span class="console_font">&lt;img&gt;</span> 태그로 다시 로딩하려고 시도하는 버그를 우회합니다.<br>주의: 이미지를 사용한 CSRF 공격 방지에 도움이 될 수 있으나, 일부 IE 구버전에서 오류가 발생한다는 제보가 있습니다.';
$lang->cmd_supercache_auto_purge_cache_files='캐시 파일 자동 정리';
$lang->cmd_supercache_auto_purge_cache_files_help='기본값 또는 파일 캐시 사용시 <span class="console_font">files/supercache</span> 폴더의 용량이 지나치게 커지지 않도록 오래된 파일을 자동 정리합니다.<br>주의: 글이나 댓글을 작성할 때 지나치게 오래 걸리거나 오류가 발생한다면 이 옵션을 해제하십시오.';
$lang->cmd_supercache_redirect_to_default_url='항상 기본 URL로 리다이렉트';
$lang->cmd_supercache_redirect_to_default_url_help='서로 다른 여러 도메인으로 사이트에 접속하면 전체화면 캐시의 효율이 떨어질 수 있습니다.<br>기본 URL 이외의 도메인으로 접속하거나 IP 주소로 직접 접속한 경우 기본 URL로 자동 리다이렉트합니다.';
$lang->cmd_supercache_redirect_to_default_url_help_current_url='현재 설정된 기본 URL은 <span class="console_font">%s</span>입니다.';
$lang->cmd_supercache_use_gzip='Gzip 압축 사용';
$lang->cmd_supercache_use_gzip_default='기본값';
$lang->cmd_supercache_use_gzip_always='항상 사용';
$lang->cmd_supercache_use_gzip_except_robots='로봇 제외';
$lang->cmd_supercache_use_gzip_except_naver='네이버 로봇만 제외';
$lang->cmd_supercache_use_gzip_none='사용하지 않음';
$lang->cmd_supercache_use_gzip_help='Gzip 압축 기능은 속도 개선 및 트래픽 절약 효과가 있으나, 일부 로봇이 접근하지 못하는 문제가 생길 수도 있습니다.<br>문제가 있는 경우 특정 로봇만 제외하고 사용하시기 바랍니다.<br>웹서버 자체에서 자동 압축 기능을 제공하는 경우 이 기능이 필요하지 않습니다.';
$lang->cmd_supercache_use_gzip_help_constant='이 설정을 변경하려면 <span class="console_font">config.inc.php</span> 파일에서 <span class="console_font">__OB_GZHANDLER_ENABLE__</span> 상수를 <span class="console_font">1</span>로 지정해야 합니다.';
$lang->msg_supercache_rhymix_no_cache='라이믹스에서는 이 화면에서 캐시 설정을 변경할 수 없습니다.';
$lang->msg_supercache_memcached_not_supported='서버에 Memcache 또는 Memcached 확장 모듈이 설치되어 있지 않습니다.';
$lang->msg_supercache_apc_not_supported='서버에 APC 확장 모듈이 설치되어 있지 않습니다.';
$lang->msg_supercache_wincache_not_supported='서버에 WinCache 확장 모듈이 설치되어 있지 않습니다.';
$lang->msg_supercache_list_replacement_not_supported='이 사이트에서는 페이징 캐시를 사용할 수 없습니다.';
$lang->msg_supercache_offset_query_not_supported='이 사이트에서는 오프셋 쿼리를 사용할 수 없습니다.';
$lang->msg_supercache_search_cache_requires_paging_cache='검색 결과 캐시를 사용하려면 페이징 캐시가 필요합니다.';
$lang->msg_supercache_config_save_failed='설정 파일 저장에 실패했습니다.';
$lang->msg_supercache_not_available='사용할 수 없음';
$lang->msg_supercache_core_object_cache_is_disabled='이 서버에서 사용할 수 없는 캐시 방식입니다.';
$lang->msg_supercache_flush_cache_ok='캐시를 비웠습니다.';
$lang->msg_supercache_flush_cache_error='캐시를 비우는 데 실패했습니다. 캐시 폴더를 직접 삭제하거나 캐시 서비스를 재시작해 주십시오.';
$lang->msg_supercache_flush_cache_fast='참 빠르죠? ㅎㅎ';
