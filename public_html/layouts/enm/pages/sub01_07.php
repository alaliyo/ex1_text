<div class="contents-wrap greeting">
    <div class="title light1">
        <strong class="bold3">오시는 길</strong>
        <h5 class="cl-7c bold3">천하만민이 복을 받으리라</h5>
    </div>
    <!-- * 카카오맵 - 지도퍼가기 -->
    <div class="hidden-xs hidden-sm">
        <!-- 1. 지도 노드 -->
        <div id="daumRoughmapContainer1699424989595" class="root_daum_roughmap root_daum_roughmap_landing"></div>

        <!-- 2. 설치 스크립트 -->
        <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

        <!-- 3. 실행 스크립트 -->
        <script charset="UTF-8">
            new daum.roughmap.Lander({
                "timestamp" : "1699424989595",
                "key" : "2gr4i",
                "mapWidth" : "1400",
                "mapHeight" : "400"
            }).render();
        </script>
    </div>
    <div class="hidden-lg hidden-md">
        <!-- 1. 지도 노드 -->
        <div id="daumRoughmapContainer1699425077059" class="root_daum_roughmap root_daum_roughmap_landing map-style"></div>

        <!--
            2. 설치 스크립트
            * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
        -->
        <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

        <!-- 3. 실행 스크립트 -->
        <script charset="UTF-8">
            new daum.roughmap.Lander({
                "timestamp" : "1699425077059",
                "key" : "2gr4m",
                "mapHeight" : "400"
            }).render();
        </script>
    </div>

    <div class="map-info">
            <div class="info-list pd-t-20">
                <div class="mapicon_box"><img src="../img/sub/mapicon_1.png" alt=""></div>
                <div class="maptxt_box">
                    <p class="info-tit" id="info_tit">주소</p>
                    <div class="kakaomap_box">
                        <p class="info-txt">부산시 금정구 금샘로 319
                            <!-- <a href="https://kko.to/iYWNfiTXSA" target="_blank"><i class="bi bi-geo-alt-fill map"></i></a> //이전 코드 -->
                        </p>
                        <div class="kakaolink">
                            <a href="https://kko.to/iYWNfiTXSA" target="_blank"><img class="kakaomap_icon" src="../img/sub/kakaomap_icon.png" alt=""></a>
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="info-list">
                <div class="mapicon_box"><img src="../img/sub/mapicon_2.png" alt=""></div>
                <div class="maptxt_box">
                    <p class="info-tit" id="info_tit">연락처</p>
                    <div class="map_flex">
                        <P>대표전화 : 051-518-4370</p>
                        <P>Fax : 051-518-4371</p>
                    </div>
                </div>
            </div>
            <div class="info-list">
                <div class="mapicon_box"><img src="../img/sub/mapicon_3.png" alt=""></div>
                <div class="maptxt_box">
                    <p class="info-tit" id="info_tit">대중교통으로 오시려면?</p>
                    <div>
                        <P class="info-txt badge2">구서역 1번출구</p>
                        <P class="info-txt badge3">금정 3-2 마을버스 승차 → 태광인력개발원 우성아파트3동 방면 하차 → 금샘로 남쪽방향으로 150미터에 위치</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>