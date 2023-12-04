<?php if(!defined("__XE__"))exit;
$__Context->doc_count = count($__Context->document_list) ?>
    <?php $__Context->z=0 ?>
    <?php if($__Context->document_list&&count($__Context->document_list))foreach($__Context->document_list as $__Context->no => $__Context->document){ ?>
        <?php  $__Context->doc_srl[$__Context->z] = $__Context->document->document_srl ?>
        <?php if($__Context->document->document_srl == $__Context->oDocument->document_srl){ ?>
            <?php  $__Context->now_z = $__Context->z  ?>
        <?php } ?>
        <?php $__Context->z++; ?>
    <?php } ?>
 
    <?php if($__Context->now_z == 0 && $__Context->page > 1){ ?>
 
        <?php 
            $__Context->oModuleModel = &getModel('module');
            $__Context->module_srl_temp = $__Context->oModuleModel->getModuleSrlByMid($__Context->mid);
 
            if(is_array($__Context->module_srl_temp)) $__Context->module_srl = $__Context->module_srl_temp[0];
            else $__Context->module_srl = $__Context->module_srl_temp;
 
            $__Context->args->module_srl = $__Context->module_srl;
            $__Context->args->category_srl = $__Context->category_srl;
            $__Context->args->list_count = $__Context->module_info->list_count;
            $__Context->args->search_target = $__Context->search_target;
            $__Context->args->search_keyword = $__Context->search_keyword;
            $__Context->args->page = $__Context->page-1;
            $__Context->args->sort_index = $__Context->module_info->sort_index;
            $__Context->args->order_type = $__Context->module_info->order_type;
 
            $__Context->docList_output = executeQueryArray('document.getDocumentList', $__Context->args);
         ?>
 
        <?php $__Context->x=0 ?>
        <?php if($__Context->docList_output->data&&count($__Context->docList_output->data))foreach($__Context->docList_output->data as $__Context->doc){ ?>
            <?php if($__Context->x == count($__Context->docList_output->data) - 1){ ?>
                <?php  $__Context->beforeDoc = $__Context->doc->document_srl  ?>
            <?php } ?>
            <?php $__Context->x++; ?>
        <?php } ?>
 
        <?php  $__Context->afterDoc = $__Context->doc_srl[$__Context->now_z+1]  ?>
 
    <?php }else if($__Context->now_z == $__Context->doc_count - 1 && $__Context->page < $__Context->total_page){ ?>
 
        <?php 
            $__Context->oModuleModel = &getModel('module');
            $__Context->module_srl_temp = $__Context->oModuleModel->getModuleSrlByMid($__Context->mid);
 
            if(is_array($__Context->module_srl_temp)) $__Context->module_srl = $__Context->module_srl_temp[0];
            else $__Context->module_srl = $__Context->module_srl_temp;
 
            $__Context->args->module_srl = $__Context->module_srl;
            $__Context->args->category_srl = $__Context->category_srl;
            $__Context->args->list_count = $__Context->module_info->list_count;
            $__Context->args->search_target = $__Context->search_target;
            $__Context->args->search_keyword = $__Context->search_keyword;
            $__Context->args->page = $__Context->page+1;
            $__Context->args->sort_index = $__Context->module_info->sort_index;
            $__Context->args->order_type = $__Context->module_info->order_type;
 
            $__Context->docList_output = executeQueryArray('document.getDocumentList', $__Context->args);
         ?>
 
        <?php $__Context->x=0 ?>
        <?php if($__Context->docList_output->data&&count($__Context->docList_output->data))foreach($__Context->docList_output->data as $__Context->doc){ ?>
            <?php if($__Context->x == 0){ ?>
                <?php  $__Context->afterDoc = $__Context->doc->document_srl  ?>
            <?php } ?>
            <?php $__Context->x++; ?>
        <?php } ?>
 
        <?php  $__Context->beforeDoc = $__Context->doc_srl[$__Context->now_z-1]  ?>
 
    <?php }else{ ?>
 
        <?php  $__Context->beforeDoc = $__Context->doc_srl[$__Context->now_z-1]; $__Context->afterDoc = $__Context->doc_srl[$__Context->now_z+1];  ?>
 
    <?php } ?>
 
    <?php if(!$__Context->beforeDoc){ ?>
        <?php  $__Context->beforeDoc = $__Context->oDocument->document_srl  ?>
    <?php }else if(!$__Context->afterDoc){ ?>
        <?php  $__Context->afterDoc = $__Context->oDocument->document_srl  ?>
    <?php } ?>
	<?php if($__Context->module_info->display_sign != 'N' && ($__Context->oDocument->getProfileImage() || $__Context->oDocument->getSignature())){ ?>	
		<?php 
		 $__Context->MemberModel = &getModel('member');
		 $__Context->member_info = $__Context->MemberModel->getMemberInfoByMemberSrl($__Context->document->getMemberSrl());
		 ?>
	<?php } ?>
	<?php 
		$__Context->reserve_date = $__Context->oDocument->getExtraEidValue('reserve_date');
	 ?>
<div class="view-doc paddingb20 rd wow fadeIn" style="animation-delay:0.5s">
	<div class="cont-title">
		<div class="view_time">
			<div class="custom_day"><?php echo $__Context->reserve_date ? date('d', strtotime($__Context->reserve_date)) : $__Context->oDocument->getRegdate('d') ?></div>
				<div class="custom_ym"><?php echo $__Context->reserve_date ? date('Y.m', strtotime($__Context->reserve_date)) : $__Context->oDocument->getRegdate('Y.m') ?></div>
		</div>
		<div class="view_title">
			<?php echo $__Context->oDocument->getTitle();
echo $__Context->aa_count ?>
		</div>
	</div>
	
	<style>
		.cont-title{display:flex; justify-content:space-between; align-items:center; border-top:2px solid #333; border-bottom:1px solid #d7d5d5; padding:12px 0;}
		.view_time{width:100px; line-height:1.4; text-align:center; color:#333; font-weight:600; border-right:1px solid #d7d5d5;}
		.view_time .custom_day{font-size:34px;}
		.view_time .custom_ym{font-size:15px; font-weight:500;}
		.view_title{margin:0 auto; font-size:20px; color:#333; line-height:1em; font-weight:600;}
		.view_info{display:none;}
		.view_docu > .xe_content{font-size:16px !important; font-weight:500 !important; color:#333 !important; line-height:24px !important;}
		@media (max-width: 991px) {
			.view_time .custom_day{font-size:24px;}
			.view_time .custom_ym{font-size:14px;}
			.view_title{font-size:14px; padding:0 15px; line-height:18px;}
		}
	</style>
	<ul class="viewinfo list-inline view_info" style="padding-left:0px;margin-left:0px;">
		<?php if($__Context->module_info->use_category=='Y'){ ?><li><i class="fa fa-folder fa-fw"></i> <?php echo $__Context->category_list[$__Context->oDocument->get('category_srl')]->title ?></li><?php } ?>
		<?php if($__Context->list_config['nick_name']){ ?><li><a href="#popup_menu_area" class="member_<?php echo $__Context->oDocument->get('member_srl') ?>" onclick="return false"><i class="fa fa-user fa-fw"></i><?php echo $__Context->oDocument->getNickName() ?></a></li><?php } ?>
		<?php if($__Context->list_config['user_id']){ ?><li><i class="fa fa-user fa-fw"></i><?php echo $__Context->oDocument->getUserID() ?></li><?php } ?>
		<?php if($__Context->list_config['user_name']){ ?><li><i class="fa fa-user fa-fw"></i> <?php echo $__Context->oDocument->getUserName() ?></li><?php } ?>
		<?php if($__Context->list_config['regdate']){ ?><li><i class="fa fa-clock-o fa-fw"></i> <?php echo $__Context->oDocument->getRegdate("M d, Y") ?></li><?php } ?>							
		<?php if($__Context->list_config['last_update']){ ?><li><i class="fa fa-calendar-o fa-fw"></i> <?php echo zdate($__Context->oDocument->get('last_update'),'M d, Y') ?> <?php if($__Context->oDocument->getLastUpdater()){ ?>by <?php echo $__Context->oDocument->getLastUpdater();
} ?></li><?php } ?>
		<?php if($__Context->list_config['comment_status']&&$__Context->oDocument->getCommentCount()){ ?><li><a href="<?php echo getUrl('document_srl', $__Context->oDocument->document_srl) ?>#comment"><i class="fa fa-comment fa-fw"></i> <?php echo $__Context->oDocument->getCommentCount() ?></a></li><?php } ?>
		<?php if($__Context->oDocument->getTrackbackCount()){ ?><li><i class="fa fa-comments fa-fw"></i> <a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#trackback"><?php echo $__Context->oDocument->getTrackbackCount() ?></a></li><?php } ?>
		<?php if($__Context->list_config['readed_count']){ ?><li><i class="fa fa-comments fa-fw"></i> <?php echo $__Context->oDocument->get('readed_count')>0?$__Context->oDocument->get('readed_count'):'0' ?></li><?php } ?>
		<?php if($__Context->list_config['voted_count']){ ?><li><i class="fa fa-thumbs-up fa-fw"></i> <?php echo $__Context->oDocument->get('voted_count')!=0?$__Context->oDocument->get('voted_count'):'0' ?></li><?php } ?>
		<?php if($__Context->list_config['blamed_count']){ ?><li><i class="fa fa-thumbs-down fa-fw"></i> <?php echo $__Context->oDocument->get('blamed_count')!=0?$__Context->oDocument->get('blamed_count'):'0' ?></li><?php } ?>	
		<?php if($__Context->oDocument->getTrackbackCount()){ ?><li><i class="fa fa-comments fa-fw"></i> <a href="#trackback"><?php echo $__Context->oDocument->getTrackbackCount() ?></a></li><?php } ?>
		<?php if($__Context->module_info->uploadFile=='Y'){ ?>
		<?php if($__Context->oDocument->hasUploadedFiles()){ ?><li><a href="#documentfile" data-toggle="collapse"><i class="fa fa-download fa-fw"></i> <?php echo $__Context->lang->uploaded_file ?> <?php echo $__Context->oDocument->get('uploaded_count') ?>개</a></li><?php };
} ?>
	</ul>
	<?php if($__Context->oDocument->isExtraVarsExists() && (!$__Context->oDocument->isSecret() || $__Context->oDocument->isGranted()) ){ ?>
		<?php if($__Context->oDocument->getExtraVars()&&count($__Context->oDocument->getExtraVars()))foreach($__Context->oDocument->getExtraVars() as $__Context->key => $__Context->val){ ?>
			
			<?php if($__Context->val->eid !='video'){ ?>
				<?php if($__Context->oDocument->getExtraValueHTML($__Context->val->idx)){ ?>
					<div summary="Extra Form" class="row extra-row">
						<div class="col-xs-4 col-sm-3 col-lg-2 extra-left text-right"><?php echo $__Context->val->name ?></div>
						<div class="col-xs-8 col-sm-9 col-lg-10 extra-right"><?php echo $__Context->val->getValueHTML() ?></div>
					</div>
				<?php } ?>	
			<?php }else{ ?>
				<?php if($__Context->module_info->display_videoplaydoc=='Y'){ ?>
					<?php if($__Context->oDocument->getExtraValueHTML($__Context->val->idx)){ ?>
						<?php if($__Context->module_info->display_videoplaydocname=='N'){ ?>
						<?php }else{ ?>
						<div summary="Extra Form" class="row" style="display:none;">
							<div class="col-xs-4 col-sm-3 col-lg-2 text-right"><?php echo $__Context->val->name ?></div>
							<div class="col-xs-8 col-sm-9 col-lg-10"><?php echo $__Context->val->getValueHTML() ?></div>
						</div>
						<br />
						<?php } ?>	
					<?php 	$__Context->extras	= $__Context->val->getValueHTML(); ?>
						<?php if(preg_match('/youtu/', $__Context->extras)){ ?>
							<?php if(preg_match('/list/', $__Context->extras)){ ?>
							<?php 
								$__Context->video_id = explode('v=',$__Context->extras);
								$__Context->youtu_id = explode('&',$__Context->video_id[1]);
								$__Context->youtube_id = explode('?',$__Context->youtu_id[0]);
								$__Context->list_id = explode('list=',$__Context->extras);
								$__Context->youtuli_id = explode('&',$__Context->list_id[1]);
								$__Context->youtubeli_id = explode('?',$__Context->youtuli_id[0]);									
							 ?>
							<div class="video-container"><iframe src="//www.youtube.com/embed/<?php echo $__Context->youtube_id[0] ?>?list=<?php echo $__Context->youtubeli_id[0] ?>" frameborder="0" allowfullscreen="true"></iframe></div>
							<?php }elseif(preg_match('/youtu.be/', $__Context->extras)){ ?>
							<?php 
								$__Context->video_id = str_replace('https://youtu.be/','',$__Context->extras);
							 ?>
							<div class="video-container"><iframe src="//youtube.com/embed/<?php echo $__Context->video_id ?>?version=3&vq=highres&rel=0" frameborder="0" allowfullscreen="true"></iframe></div>							
							<?php }else{ ?>
							<?php 
								$__Context->video_id = explode('v=',$__Context->extras);
								$__Context->youtu_id = explode('&',$__Context->video_id[1]);
								$__Context->youtube_id = explode('?',$__Context->youtu_id[0]);
							 ?>
							<div class="video-container"><iframe src="//youtube.com/embed/<?php echo $__Context->youtube_id[0] ?>?version=3&vq=highres&rel=0" frameborder="0" allowfullscreen="true"></iframe></div>
							<?php } ?>
						<?php }elseif(preg_match('/ted/', $__Context->extras)){ ?>
							<?php 
								$__Context->video_id = str_replace('http://www.ted.com','http://embed.ted.com',$__Context->extras);
							 ?>
							<div class="video-container"><iframe src="<?php echo $__Context->video_id ?>" frameborder="0" scrolling="no" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>
						<?php }elseif(preg_match('/vimeo/', $__Context->extras)){ ?>
							<?php 
								$__Context->video_id = str_replace('https://vimeo.com','//player.vimeo.com/video',$__Context->extras);
							 ?>
							<div class="video-container"><iframe src="<?php echo $__Context->video_id ?>" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>	
						<?php }elseif(preg_match('/drive.google/', $__Context->extras)){ ?>
							<?php 
								$__Context->video_id = str_replace('drive.google.com/file/d','www.googledrive.com/host',$__Context->extras);
								$__Context->video_id = str_replace('/edit?usp=sharing','',$__Context->video_id);
							 ?>
							<?php if(!Mobile::isMobileCheckByAgent()){ ?><div class="video-container"><embed src="/modules/board/skins/rest_default/js/player.swf" flashvars="file=<?php echo $__Context->video_id ?>&type=video" wmode="opaque"></div><?php } ?>
							<?php if(Mobile::isMobileCheckByAgent()){ ?><div class="video-container"><iframe src="https://docs.google.com/uc?id=0B1E_R4fVdBTndV9aN0lsbE9WZkE&export=download"></iframe></div><?php } ?>
						<?php }elseif(preg_match('/mp3/', $__Context->extras) || preg_match('/m4a/', $__Context->extras)  || preg_match('/f4a/', $__Context->extras) || preg_match('/acc/', $__Context->extras)){ ?>
						<!--#Meta:modules/board/skins/KSO_v1/js/jwplayer.js--><?php $__tmp=array('modules/board/skins/KSO_v1/js/jwplayer.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
						<div id="myElement"></div>
							<script>
								jwplayer("myElement").setup({
									file: "<?php echo $__Context->extras ?>",
									height: 33
								});
							</script>	
						<?php }else{ ?>
						<!--#Meta:modules/board/skins/KSO_v1/js/jwplayer.js--><?php $__tmp=array('modules/board/skins/KSO_v1/js/jwplayer.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
						<div id="myElement"></div>
							<script>
								jwplayer("myElement").setup({
									file: "<?php echo $__Context->extras ?>",
									width: "100%",
									aspectratio: "16:10"
								});
							</script>		
						<?php } ?>
					<?php } ?>
				<?php }else{;
} ?>		
			<?php } ?>
		<?php } ?>
	<?php } ?>
	<div class="clearfix"></div>
	<div class="viewbody">
	<?php if($__Context->oDocument->isSecret() && !$__Context->oDocument->isGranted()){ ?>
		<div class="form-group col-xs-12 col-sm-6 col-md-4 col-lg-4">
			<form action="./" method="get" onsubmit="return procFilter(this, input_password)"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
				<input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" />
				<input type="hidden" name="page" value="<?php echo $__Context->page ?>" />
				<input type="hidden" name="document_srl" value="<?php echo $__Context->oDocument->document_srl ?>" />
				<div class="input-group">
					<span class="input-group-addon" style="border-radius:0;">비밀번호</span>
					<input type="password" name="password" class="form-control">
					<span class="input-group-btn">
						<button class="btn btn-default" type="submit" style="margin-left:10px;"><?php echo $__Context->lang->cmd_input ?></button>
					</span>
				</div>
			</form>
		</div>
		<div class="clearfix"></div>
	<?php }else{ ?>
	<?php if($__Context->module_info->display_photogallery=='Y'){ ?>
	<?php 
		$__Context->ext=substr($__Context->file->source_filename, -4);
		$__Context->ext=strtolower($__Context->ext);
		$__Context->extImg=in_array($__Context->ext,array('.jpg','jpeg','.gif','.png'));
	 ?>	
	<?php if($__Context->extImg){ ?><div class="thumbnail" style="padding:10px;">
		<div id="rest_view_carousel" class="carousel slide" data-ride="carousel"  style="background-color:#000;">
			<ol class="carousel-indicators">
			<?php $__Context->o_item = 0 ?>
			<?php if($__Context->oDocument->getUploadedFiles()&&count($__Context->oDocument->getUploadedFiles()))foreach($__Context->oDocument->getUploadedFiles() as $__Context->key=>$__Context->file){ ?>
			<li data-target="#rest_view_carousel" data-slide-to="<?php echo $__Context->o_item ?>" <?php if($__Context->o_item==0){ ?>class="active"<?php } ?>></li>
			<?php $__Context->o_item++ ?>
			<?php } ?>
			</ol>
		  <div class="carousel-inner">
			<?php $__Context->c_item = 0 ?>
			<?php if($__Context->oDocument->getUploadedFiles()&&count($__Context->oDocument->getUploadedFiles()))foreach($__Context->oDocument->getUploadedFiles() as $__Context->key=>$__Context->file){ ?>
			<div class="item<?php if($__Context->c_item==0){ ?> active<?php } ?>">
			<center><a href='<?php echo $__Context->file->uploaded_filename ?>' target="_blank" onclick="window.open(this.href,'viewphoto','width=800px,height=600px,resizable=yes'); return false;"><img src="<?php echo $__Context->file->uploaded_filename ?>" style="<?php if($__Context->module_info->display_photogalleryheight){ ?>height:<?php echo $__Context->module_info->display_photogalleryheight ?>px<?php }else{;
} ?>"></a></center>
			</div>
			<?php $__Context->c_item++ ?>
			<?php } ?>
		  </div>
		  <a class="left carousel-control" href="#rest_view_carousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		  </a>
		  <a class="right carousel-control" href="#rest_view_carousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		  </a>
		</div>
		<div style="margin-top:10px;"><?php $__Context->t_item = 0 ?>
		<?php if($__Context->oDocument->getUploadedFiles()&&count($__Context->oDocument->getUploadedFiles()))foreach($__Context->oDocument->getUploadedFiles() as $__Context->key=>$__Context->file){ ?>
			<div data-target="#rest_view_carousel" data-slide-to="<?php echo $__Context->t_item ?>" class="pull-left<?php if($__Context->t_item==0){ ?> active<?php } ?>"<?php if(Mobile::isMobileCheckByAgent()){ ?> style="width:40px;height:30px;"<?php };
if(!Mobile::isMobileCheckByAgent()){ ?> style="width:100px !important;height:75px !important;"<?php } ?>>
			<img src="<?php echo $__Context->file->uploaded_filename ?>"<?php if(Mobile::isMobileCheckByAgent()){ ?> style="width:40px !important;height:30px !important;"<?php };
if(!Mobile::isMobileCheckByAgent()){ ?> style="width:100px !important;height:75px !important;"<?php } ?>>
			</div>
		<?php $__Context->t_item++ ?>
		<?php } ?><div class="clearfix"></div>
		</div>
	</div><?php } ?>
	<?php } ?>
	<div class="view_docu"><?php echo $__Context->oDocument->getContent() ?></div>
	<?php } ?>
	</div>
	<div class="view-signature">
		<?php  $__Context->tag_list = $__Context->oDocument->get('tag_list')  ?>
		<?php if(count($__Context->tag_list)){ ?>
		<div class="viewtag">
			<i class="fa fa-tag fa-fw"></i> 
			<?php for($__Context->i=0;$__Context->i<count($__Context->tag_list);$__Context->i++){;
$__Context->tag = $__Context->tag_list[$__Context->i];  ?> <a href="<?php echo getUrl('search_target','tag','search_keyword',$__Context->tag,'document_srl','') ?>" rel="tag" class="label label-default"><?php echo htmlspecialchars($__Context->tag) ?></a><?php } ?>
		</div>	
		<div class="clearfix"></div>
		<?php } ?>		
		<?php if($__Context->oDocument->allowTrackback()){ ?>
		<div class="pull-left paddingb10 nocolorlist">
			<i class="fa fa-link fa-fw"></i> <a href="<?php echo $__Context->oDocument->getTrackbackUrl() ?>" onclick="return false;"><?php echo $__Context->oDocument->getTrackbackUrl() ?></a>
		</div>
		<div class="clearfix"></div>
		<?php } ?>
        <?php if($__Context->module_info->display_sign != 'N' && ($__Context->oDocument->getProfileImage() || $__Context->oDocument->getSignature())){ ?>
		<div class="signature media">
			<div class="pull-left">
			<?php if($__Context->oDocument->getProfileImage()){ ?>
				<img src="<?php echo $__Context->oDocument->getProfileImage() ?>" alt="profile" class="pull-left"/>
			<?php } ?>
			</div>
			<?php if($__Context->oDocument->getSignature()){ ?>
			  <div class="media-body">
				  <div class="arrow"><?php echo $__Context->oDocument->getSignature() ?></div>
			  </div>
			<?php } ?>			
		</div>
		<div class="clearfix"></div>
		<?php } ?>				
	</div>
	<div class="clearfix"></div>
    
	<div class="view-footer">
        <?php if($__Context->module_info->uploadFile=='Y'){ ?>
            <?php if($__Context->oDocument->hasUploadedFiles()){ ?><span class="upload_tit">첨부파일</span><?php } ?>
            <?php if($__Context->oDocument->hasUploadedFiles()){ ?><ul class="upload_file" id="documentfile">
                <?php  $__Context->uploaded_list = $__Context->oDocument->getUploadedFiles()  ?>
                <?php if($__Context->uploaded_list&&count($__Context->uploaded_list))foreach($__Context->uploaded_list as $__Context->key => $__Context->file){ ?>
                <li><i class="bi bi-download"></i><a href="<?php echo getUrl('');
echo $__Context->file->download_url ?>"><?php echo $__Context->file->source_filename ?> <span class="upload_size">[File Size:<?php echo FileHandler::filesize($__Context->file->file_size) ?>]</span> <span class="upload_btn">다운받기</span></a></li>
                <?php } ?>
            </ul><?php } ?>
        <?php } ?>
		<div class="foot-navi pull-left">
			<div class="btn-group">
				<?php if($__Context->module_info->default_style != 'blog'){ ?>
				<a class="btn btn-default btn-sm" href="<?php echo getUrl('document_srl',$__Context->beforeDoc,'listStyle',$__Context->listStyle, 'cpage','', 'page', '') ?>">이전글</a>
				<a class="btn btn-default btn-sm" href="<?php echo getUrl('document_srl',$__Context->afterDoc,'listStyle',$__Context->listStyle, 'cpage','', 'page', '') ?>">다음글</a>
				<?php } ?>
			</div>
		</div>
		<div class="foot-navi pull-right">
			<div class="btn-group">
				<?php if($__Context->oDocument->allowComment()){ ?>
				<?php if($__Context->grant->write_comment && $__Context->oDocument->isEnableComment() ){ ?>
				<button class="btn btn-default btn-sm" data-toggle="collapse" data-target="#commentwrite_<?php echo $__Context->oDocument->document_srl ?>" ><?php echo $__Context->lang->cmd_reply ?></button>
				<?php } ?>
				<?php } ?>
				<?php if($__Context->oDocument->isEditable()){ ?>
				<a class="btn btn-default btn-sm"  href="<?php echo getUrl('act','dispBoardWrite','document_srl',$__Context->oDocument->document_srl,'comment_srl','') ?>"><?php echo $__Context->lang->cmd_modify ?></a>
				<a class="btn btn-default btn-sm"  href="<?php echo getUrl('act','dispBoardDelete','document_srl',$__Context->oDocument->document_srl,'comment_srl','') ?>"><?php echo $__Context->lang->cmd_delete ?></a>
				<?php } ?>
				<?php if($__Context->module_info->default_style != 'blog'){ ?>
				<a class="btn btn-default btn-sm"  href="<?php echo getUrl('document_srl','') ?>"><?php echo $__Context->lang->cmd_list ?></a>
				<?php } ?>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
    
	
	<?php if($__Context->oDocument->allowTrackback()){ ?>
	<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','trackback.html') ?>
	<?php } ?>
	<div id="<?php echo $__Context->oDocument->document_srl ?>_comment">
		<a name="comment"></a>
		<?php if($__Context->oDocument->allowComment() && $__Context->mi->cmt_wrt_position=='cmt_wrt_btm'){;
$__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_comment_write.html');
} ?>
		<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','comment.html') ?>	
		<?php if($__Context->oDocument->allowComment() && !$__Context->mi->cmt_wrt_position){;
$__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_comment_write.html');
} ?>
	</div>
</div>	
<div class="clearfix"></div>