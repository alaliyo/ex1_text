<?php
    if(!defined("__ZBXE__")) exit();

    /**
     * @addon_insert_video.addon.php
     * @author XENARA (kolaskks@naver.com)
     * @brief XENARA 동영상 삽입 애드온
     **/

    if($called_position == 'after_module_proc') {

      $oDocument = Context::get('oDocument');
      if($addon_info->video_eid){
        $video_eid = $addon_info->video_eid;
      } else{
        $video_eid = 'video_link';
      }

      if($oDocument->document_srl && $oDocument->getExtraEidValue($video_eid) && !Context::get('act')){

  			Context::addCSSFile($request_uri.'./addons/addon_insert_video/css/addon.css');
        $addon_path = $request_uri.'./addons/addon_insert_video/';


        //PC,모바일 체크
        $is_mobile = 'N';
        if(Mobile::isMobileCheckByAgent()){
          $is_mobile = 'Y';
        }
        if(Context::get('m')==1){
          $is_mobile = 'Y';
        }
        if(Context::get('m')!=1){
          $is_mobile = 'N';
        }

        //PC버전 동영상 변수설정
        if($addon_info->video_width){
          $video_width = $addon_info->video_width;
        } else{
          $video_width = '100%';
        }
        if($addon_info->video_height){
          $video_height = $addon_info->video_height;
        } else{
          $video_height = '405';
        }

        //모바일버전 동영상 변수설정
        if($is_mobile=='Y'){
          if($addon_info->m_video_width){
            $video_width = $addon_info->m_video_width.'px';
          } else{
            $video_width = '100%';
          }
          if($addon_info->m_video_height){
            $video_height = $addon_info->m_video_height;
          } else{
            $video_height = '180';
          }
        }

        //동영상 문서내 삽입 변수설정
        if($addon_info->insert_selecter){
          $insert_selecter = $addon_info->insert_selecter;
        } else{
          $insert_selecter = 'xe_content';
        }
        if($addon_info->insert_position){
          $insert_position = $addon_info->insert_position;
        } else{
          $insert_position = 'prepend';
        }
        


        //동영상 정보 출력코드
        $media_type = str_replace('http://','',$oDocument->getExtraEidValue($video_eid));
        $media_type = str_replace('https://','',$media_type);
        $media_type = substr($media_type, 0, 5);
        if($media_type=='youtu'){
          $youtube_code = $oDocument->getExtraEidValue($video_eid);
          $youtube_vid = str_replace('http://youtu.be/','',$youtube_code);
          $youtube_vid = str_replace('https://youtu.be/','',$youtube_vid);
          $video_play_url = 'http://www.youtube.com/embed/'.$youtube_vid.'?autoplay=0&rel=0&vq=hd720&version=3';
          $video_autoplay_url = 'http://www.youtube.com/embed/'.$youtube_vid.'?autoplay=1&rel=0&vq=hd720&version=3';
          $media_type = 'video';
          $media_type_detail = 'youtube';
          $video_iframe = '<iframe id="video_iframe" width="'.$video_width.'" height="'.$video_height.'" src="'.$video_autoplay_url.'" frameborder="0" allowfullscreen></iframe>';
        } else if($media_type=='vimeo'){
          $vimeo_code = $oDocument->getExtraEidValue($video_eid);
          $vimeo_vid = str_replace('http://vimeo.com/','',$vimeo_code);
          $vimeo_vid = str_replace('https://vimeo.com/','',$vimeo_vid);
          $video_play_url = '//player.vimeo.com/video/'.$vimeo_vid;
          $video_autoplay_url = '//player.vimeo.com/video/'.$vimeo_vid.'?autoplay=1';
          $media_type = 'video';
          $media_type_detail = 'vimeo';
          $video_iframe = '<iframe id="video_iframe" width="'.$video_width.'" height="'.$video_height.'" src="'.$video_autoplay_url.'" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
        }



        //본문 내 동영상 삽입코드
        $header_content = '';
        $header_content .= '
          <script>
            jQuery(document).ready(function(){
              jQuery(".'.$insert_selecter.'").'.$insert_position.'("'.addslashes($video_iframe).'");
            });
          </script>
        ';
        Context::addHtmlHeader($header_content);



      }


    }
?>
