<?php if(!defined("__XE__"))exit;
echo Context::set('layout','none') ?>
<?php echo Context::set('admin_bar','false') ?>
<style type="text/css">
body {
	margin:0px;
	padding:0px;
	overflow:hidden;
	width:100%;
	height:100%;
	background-color:#000;
}
</style>
<!--#Meta:modules/board/skins/KSO_v1/js/jwplayer.js--><?php $__tmp=array('modules/board/skins/KSO_v1/js/jwplayer.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<script>
jQuery(window).load(function() {
  var strWidth;
  var strHeight;
  //innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저 
  if ( window.innerWidth && window.innerHeight && window.outerWidth && window.outerHeight ) {
    strWidth = jQuery('#videoresize').outerWidth() + (window.outerWidth - window.innerWidth);
    strHeight = jQuery('#videoresize').outerHeight() + (window.outerHeight - window.innerHeight);
  }
  else {
    var strDocumentWidth = jQuery(document).outerWidth();
    var strDocumentHeight = jQuery(document).outerHeight();
    window.resizeTo ( strDocumentWidth, strDocumentHeight );
    var strMenuWidth = strDocumentWidth - jQuery(window).width();
    var strMenuHeight = strDocumentHeight - jQuery(window).height();
    strWidth = jQuery('#videoresize').outerWidth() + strMenuWidth;
    strHeight = jQuery('#videoresize').outerHeight() + strMenuHeight;
  }
  //resize 
  window.resizeTo( strWidth, strHeight );
}); 
</script>
<body>
<div id="videoresize">
<?php if($__Context->oDocument->isExtraVarsExists() && (!$__Context->oDocument->isSecret() || $__Context->oDocument->isGranted()) ){ ?>
<?php if($__Context->oDocument->getExtraVars()&&count($__Context->oDocument->getExtraVars()))foreach($__Context->oDocument->getExtraVars() as $__Context->key => $__Context->val){ ?>
<?php if($__Context->val->eid=='video'){ ?>
    <?php 	$__Context->extras	= $__Context->val->getValueHTML(); ?>
		<?php if(preg_match('/youtu/', $__Context->extras)){ ?>
			<?php if(preg_match('/list/', $__Context->extras)){ ?>
				<?php 
					$__Context->video_id = str_replace('https://youtu.be/','',$__Context->extras);
					$__Context->video_id = str_replace('https://www.youtube.com/watch?v=','',$__Context->video_id);
					$__Context->video_id = str_replace('http://www.youtube.com/watch?v=','',$__Context->video_id);	
					$__Context->video_id = explode('&amp;list=',$__Context->video_id);
				 ?>
				<div class="video-container"><iframe src="//www.youtube.com/embed/<?php echo $__Context->video_id[0] ?>?list=<?php echo $__Context->video_id[1] ?>" frameborder="0" allowfullscreen="true"></iframe></div>
				<?php }else{ ?>
				<?php 
					$__Context->video_id = str_replace('http://youtu.be/','//youtube.com/embed/',$__Context->extras);
					$__Context->video_id = str_replace('https://www.youtube.com/watch?v=','//youtube.com/embed/',$__Context->video_id);
					$__Context->video_id = str_replace('http://www.youtube.com/watch?v=','//youtube.com/embed/',$__Context->video_id);				
				 ?>
				<div class="video-container"><iframe src="<?php echo $__Context->video_id ?>?version=3&vq=highres&rel=0" frameborder="0" allowfullscreen="true"></iframe></div>
			<?php } ?>
		<?php }elseif(preg_match('/vimeo/', $__Context->extras)){ ?>
			<?php 
				$__Context->video_id = str_replace('https://vimeo.com','//player.vimeo.com/video',$__Context->extras);
			 ?>
			<div class="video-container"><iframe src="<?php echo $__Context->video_id ?>" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
		<?php }elseif(preg_match('/ted/', $__Context->extras)){ ?>
			<?php 
				$__Context->video_id = str_replace('http://www.ted.com','http://embed.ted.com',$__Context->extras);
			 ?>
			<div class="video-container"><iframe src="<?php echo $__Context->video_id ?>" frameborder="0"  scrolling="no" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>	
		<?php }elseif(preg_match('/drive.google/', $__Context->extras)){ ?>
			<?php 
				$__Context->video_id = str_replace('drive.google.com/file/d','www.googledrive.com/host',$__Context->extras);
				$__Context->video_id = str_replace('/edit?usp=sharing','',$__Context->video_id);
			 ?>
			<?php if(!Mobile::isMobileCheckByAgent()){ ?><div class="video-container"><embed src="/modules/board/skins/rest_default/js/player.swf" flashvars="file=<?php echo $__Context->video_id ?>&type=video" wmode="opaque"></div><?php } ?>
			<?php if(Mobile::isMobileCheckByAgent()){ ?><div class="video-container"><iframe src="https://docs.google.com/uc?id=0B1E_R4fVdBTndV9aN0lsbE9WZkE&export=download"></iframe></div><?php } ?>			
		<?php }else{ ?>
		<!--#Meta:modules/board/skins/KSO_v1/js/jwplayer.js--><?php $__tmp=array('modules/board/skins/KSO_v1/js/jwplayer.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
		<div  style="width:<?php if($__Context->module_info->display_videoplaywidth){;
echo $__Context->module_info->display_videoplaywidth;
}else{ ?>800<?php } ?>px;height:<?php if($__Context->module_info->display_videoplayheight){;
echo $__Context->module_info->display_videoplayheight;
}else{ ?>600<?php } ?>px"><div id="myElement"></div></div>
			<script>
				jwplayer("myElement").setup({
					file: "<?php echo $__Context->extras ?>",
					width: "100%",
					aspectratio: "4:3",
				});
			</script>		
		<?php } ?>	
<?php } ?>		
<?php } ?>
<?php } ?>	
</body>
