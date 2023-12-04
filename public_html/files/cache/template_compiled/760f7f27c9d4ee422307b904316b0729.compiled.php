<?php if(!defined("__XE__"))exit;?><form action="./" method="get" class="boardListForm"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
    <fieldset>
<?php if($__Context->document_list || $__Context->notice_list){;
if($__Context->module_info->display_listheadset_button == 'Y'){ ?><table class="table table-hover">
	<thead>
		
		<tr>
			<?php if($__Context->list_config&&count($__Context->list_config))foreach($__Context->list_config as $__Context->key=>$__Context->val){ ?>
			<?php if($__Context->val->type=='no' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs width70" ><a href="<?php echo getUrl('order_type',$__Context->order_type) ?>" title="<?php if($__Context->order_type=="desc"){;
echo $__Context->lang->order_desc;
}else{;
echo $__Context->lang->order_asc;
} ?>"><?php echo $__Context->lang->no ?> <?php if($__Context->sort_index=='no'){ ?><i class="fa <?php if($__Context->order_type=="desc"){ ?>fa-caret-down<?php }else{ ?>fa-caret-up<?php } ?> fa-fw"></i><?php } ?></a>
			</th><?php } ?>
			<?php if($__Context->val->type=='title' && $__Context->val->idx==-1){ ?>
			<?php if($__Context->module_info->use_category=='Y'){ ?><th scope="col" class="hidden-xs width70"><?php echo $__Context->lang->category ?>
			</th><?php } ?>
			<th scope="col" class="text-center"><a href="<?php echo getUrl('sort_index','title','order_type',$__Context->order_type) ?>"><?php echo $__Context->lang->title ?> <?php if($__Context->sort_index=='title'){ ?><i class="fa <?php if($__Context->order_type=="desc"){ ?>fa-caret-down<?php }else{ ?>fa-caret-up<?php } ?> fa-fw"></i><?php } ?></a>
			</th>
			<?php } ?>
			<?php if($__Context->val->type=='nick_name' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs tableuser"><?php echo $__Context->lang->writer ?>
			</th><?php } ?>
			<?php if($__Context->val->type=='user_id' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs tableuser"><?php echo $__Context->lang->user_id ?>
			</th><?php } ?>
			<?php if($__Context->val->type=='user_name' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs tableuser"><?php echo $__Context->lang->user_name ?>
			</th><?php } ?>
			<?php if($__Context->val->type=='regdate' && $__Context->val->idx==-1){ ?><th scope="col" class="tabledate"><a href="<?php echo getUrl('sort_index','regdate','order_type',$__Context->order_type) ?>"><?php echo $__Context->lang->date;
if($__Context->sort_index=='regdate'){ ?><i class="fa <?php if($__Context->order_type=="desc"){ ?>fa-caret-down<?php }else{ ?>fa-caret-up<?php } ?> fa-fw"></i><?php } ?></a>
			</th><?php } ?>
			<?php if($__Context->val->type=='last_update' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs tabledate"><a href="<?php echo getUrl('sort_index','last_update','order_type',$__Context->order_type) ?>">최근수정<?php if($__Context->sort_index=='last_update'){ ?><i class="fa <?php if($__Context->order_type=="desc"){ ?>fa-caret-down<?php }else{ ?>fa-caret-up<?php } ?> fa-fw"></i><?php } ?></a>
			</th><?php } ?>
			<?php if($__Context->val->type=='last_post' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs tabledate"><?php echo $__Context->lang->last_post ?>
			</th><?php } ?>
			<?php if($__Context->val->type=='readed_count' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs width70"><a href="<?php echo getUrl('sort_index','readed_count','order_type',$__Context->order_type) ?>">조회<?php if($__Context->sort_index=='readed_count'){ ?><i class="fa <?php if($__Context->order_type=="desc"){ ?>fa-caret-down<?php }else{ ?>fa-caret-up<?php } ?> fa-fw"></i><?php } ?></a>
			</th><?php } ?>
			<?php if($__Context->val->type=='voted_count' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs width70"><a href="<?php echo getUrl('sort_index','voted_count','order_type',$__Context->order_type) ?>">추천<?php if($__Context->sort_index=='voted_count'){ ?><i class="fa <?php if($__Context->order_type=="desc"){ ?>fa-caret-down<?php }else{ ?>fa-caret-up<?php } ?> fa-fw"></i><?php } ?></a>
			</th><?php } ?>
			<?php if($__Context->val->type=='blamed_count' && $__Context->val->idx==-1){ ?><th scope="col" class="hidden-xs width70"><a href="<?php echo getUrl('sort_index','blamed_count','order_type',$__Context->order_type) ?>">비추천<?php if($__Context->sort_index=='blamed_count'){ ?><i class="fa <?php if($__Context->order_type=="desc"){ ?>fa-caret-down<?php }else{ ?>fa-caret-up<?php } ?> fa-fw"></i><?php } ?></a>
			</th><?php } ?>
			<?php if($__Context->val->eid=='video'){ ?>
			<?php }else{ ?>
			<?php if($__Context->val->idx!=-1){ ?><th scope="col" class="hidden-xs width70"><a href="<?php echo getUrl('sort_index',$__Context->val->eid,'order_type',$__Context->order_type) ?>"><?php echo $__Context->val->name ?></a>
			</th><?php } ?>
			<?php } ?>			
			<?php if($__Context->val->eid=='video'){ ?>
			<?php if($__Context->val->idx!=-1){ ?><th scope="col" class="hidden-xs width50"><?php echo $__Context->val->name ?>
			</th><?php } ?>			
			<?php } ?>
			<?php } ?>
			<?php if($__Context->grant->manager){ ?><th scope="col" class="width30"><input class="checkbox" type="checkbox" onclick="XE.checkboxToggleAll({ doClick:true });" title="Check All" />
			</th><?php } ?>
		</tr>
	</thead>
	<tbody>
		
		<?php if($__Context->notice_list&&count($__Context->notice_list))foreach($__Context->notice_list as $__Context->no=>$__Context->document){ ?><tr class="<?php if($__Context->document->getExtraEidValue('video')){ ?>info<?php }else{ ?>active<?php } ?>">
			<?php if($__Context->list_config&&count($__Context->list_config))foreach($__Context->list_config as $__Context->key=>$__Context->val){ ?>
			<?php if($__Context->val->type=='no' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70">
				<?php if($__Context->document_srl==$__Context->document->document_srl){ ?>&raquo;<?php };
if($__Context->document_srl!=$__Context->document->document_srl){ ?><strong><?php echo $__Context->lang->notice ?></strong><?php } ?>
			</td><?php } ?>
			<?php if($__Context->val->type=='title' && $__Context->val->idx==-1){ ?>
			<?php if($__Context->module_info->use_category=='Y'){ ?><td class="hidden-xs width70 nowrap"><strong><?php echo $__Context->category_list[$__Context->document->get('category_srl')]->title ?></strong></td><?php } ?>
			<td>
				<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl, 'listStyle', $__Context->listStyle, 'cpage','') ?>"><strong><?php echo $__Context->document->getTitle($__Context->module_info->subject_cut_size) ?></strong></a>
				<?php if($__Context->document->getCommentCount()){ ?>
				 <small><a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#comment"><?php echo $__Context->document->getCommentCount() ?></a></small>
				<?php } ?>
				<?php if($__Context->document->getTrackbackCount()){ ?>
				 <small><a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#trackback"><?php echo $__Context->document->getTrackbackCount() ?></a></small>
				<?php } ?>
				&nbsp;
				<?php if((int)($__Context->document->getRegdate('YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<span class="label label-primary">new</span>
				<?php }else{ ?>
				<?php if((int)(zdate($__Context->document->get('last_update'),'YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<span class="label label-success">update</span>
				<?php } ?>
				<?php } ?>
				<?php if($__Context->document->hasUploadedFiles()){ ?><span class="label label-info">File</span><?php } ?>
				<?php if($__Context->document->variables[status]=='SECRET'){ ?><span class="label label-warning">Secret</span><?php } ?>
			</td>
			<?php } ?>
			<?php if($__Context->val->type=='nick_name' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><a href="#popup_menu_area" class="member_<?php echo $__Context->document->get('member_srl') ?> nocolorlist" onclick="return false" title="<?php echo $__Context->document->getNickName() ?>"><?php echo $__Context->document->getNickName() ?></a></td><?php } ?>
			<?php if($__Context->val->type=='user_id' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><?php echo $__Context->document->getUserID() ?></td><?php } ?>
			<?php if($__Context->val->type=='user_name' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><?php echo $__Context->document->getUserName() ?></td><?php } ?>
			<?php if($__Context->val->type=='regdate' && $__Context->val->idx==-1){ ?><td class="tabledate"><?php echo $__Context->document->getRegdate('Y.m.d') ?></td><?php } ?>
			<?php if($__Context->val->type=='last_update' && $__Context->val->idx==-1){ ?><td class="hidden-xs tabledate"><?php echo zdate($__Context->document->get('last_update'),'Y.m.d') ?></td><?php } ?>
			<?php if($__Context->val->type=='last_post' && $__Context->val->idx==-1){ ?><td class="hidden-xs tabledate">
				<?php if((int)($__Context->document->get('comment_count'))>0){ ?>
					<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl) ?>#<?php echo $__Context->document->document_srl ?>_comment" title="<?php echo getTimeGap($__Context->document->get('last_update'), "H:i") ?>"><?php echo zdate($__Context->document->get('last_update'),'Y.m.d');
if($__Context->document->getLastUpdater()){ ?><small>(by <?php echo $__Context->document->getLastUpdater() ?>)</small><?php } ?></a>
				<?php } ?>
				<?php if((int)($__Context->document->get('comment_count'))==0){ ?>&nbsp;<?php } ?>
			</td><?php } ?>
			<?php if($__Context->val->type=='readed_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70"><?php echo $__Context->document->get('readed_count')>0?$__Context->document->get('readed_count'):'0' ?></td><?php } ?>
			<?php if($__Context->val->type=='voted_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70"><?php echo $__Context->document->get('voted_count')!=0?$__Context->document->get('voted_count'):'0' ?></td><?php } ?>
			<?php if($__Context->val->type=='blamed_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70"><?php echo $__Context->document->get('blamed_count')!=0?$__Context->document->get('blamed_count'):'0' ?></td><?php } ?>
			<?php if($__Context->val->eid=='video'){ ?>	
			<?php }else{ ?>
			<?php if($__Context->val->idx!=-1){ ?><td class="width70 hidden-xs ">
				<?php if($__Context->val->eid=='rating'){ ?>
					<span title="<?php echo $__Context->document->getExtraValueHTML($__Context->val->idx);
echo $__Context->lang->score ?>"><span style="width:<?php echo $__Context->document->getExtraValueHTML($__Context->val->idx)*10 ?>%"><?php echo $__Context->document->getExtraValueHTML($__Context->val->idx) ?></span></span>
				<?php }else{ ?>
				<?php echo $__Context->document->getExtraValueHTML($__Context->val->idx) ?>
				<?php } ?>
			</td><?php } ?>
			<?php } ?>
			<?php if($__Context->val->eid=='video'){ ?>
			<?php if($__Context->val->idx!=-1){ ?><td class="width50 hidden-xs">
					<?php if($__Context->document->getExtraValueHTML($__Context->val->idx)){ ?>
					<a href="#" onclick="window.open('<?php echo getUrl('document_srl',$__Context->document->document_srl,'listStyle','video','page','') ?>','video','width=<?php if($__Context->module_info->display_videoplaywidth){;
echo $__Context->module_info->display_videoplaywidth;
}else{ ?>800<?php } ?>,height=<?php if($__Context->module_info->display_videoplayheight){;
echo $__Context->module_info->display_videoplayheight;
}else{ ?>600<?php } ?>,resizable=yes');return false">보기</a>
					<?php } ?>
			</td><?php } ?>		
			<?php } ?>
			<?php } ?>
			<?php if($__Context->grant->manager){ ?><td class="width30"><input class="checkbox" type="checkbox" name="cart" value="<?php echo $__Context->document->document_srl ?>" title="Check This Article" onclick="doAddDocumentCart(this)"<?php if($__Context->document->isCarted()){ ?> checked="checked"<?php } ?> /></td><?php } ?>
		</tr><?php } ?>
	</tbody>	
</table><?php }} ?>
<div class="clearfix"></div>
<div id="masonry-container" class="row">
	<?php if($__Context->document_list&&count($__Context->document_list))foreach($__Context->document_list as $__Context->no=>$__Context->document){ ?><div class="<?php if($__Context->module_info->display_thumbnailnum=='two'){ ?>col-lg-6 col-md-6 col-sm-6 col-xs-12 itemBox<?php }elseif($__Context->module_info->display_thumbnailnum=='three'){ ?>col-lg-4 col-md-4 col-sm-4 col-xs-12 itemBox<?php }elseif($__Context->module_info->display_thumbnailnum=='four'){ ?>col-lg-3 col-md-3 col-sm-3 col-xs-12 itemBox<?php }elseif($__Context->module_info->display_thumbnailnum=='six'){ ?>col-lg-2 col-md-2 col-sm-4 col-xs-12 itemBox<?php }else{ ?>col-lg-12 itemBox<?php } ?>">
		<div class="<?php if($__Context->module_info->display_bgStyle=='Y'){ ?>bgStyle thumbnailover<?php }else{ ?>thumbnailover thumbnail<?php } ?> relative">
			<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl,'listStyle',$__Context->listStyle, 'cpage','') ?>">
			<?php if($__Context->document->thumbnailExists($__Context->module_info->thumbnail_width, $__Context->module_info->thumbnail_height, $__Context->module_info->thumbnail_type)){ ?>
				<?php if($__Context->document->variables[status]!='SECRET'||$__Context->logged_info->is_admin=='Y'||$__Context->logged_info->member_srl==$__Context->document->variables[member_srl]){ ?>
				<div class="thumbnailgrow noimgwh">
					<div class="wrap">
						<img src="<?php echo $__Context->document->getThumbnail($__Context->module_info->thumbnail_width, $__Context->module_info->thumbnail_height, $__Context->module_info->thumbnail_type) ?>" alt=".." class="thumbnailimg">
					</div>
				</div>			
				<?php }else{ ?>
				<div class="noimgwh">
					<div class="wrap nothumbfocus"><div class="padding10">비밀글입니다</div></div>
				</div>
				<?php } ?>
			<?php }elseif($__Context->document->getExtraEidValue('video')){ ?>
				<?php 	$__Context->extras	= $__Context->document->getExtraEidValue('video'); ?>
					<?php if(preg_match('/youtu/', $__Context->extras)){ ?>
						<?php if(preg_match('/list/', $__Context->extras)){ ?>
							<?php 
								$__Context->video_id = explode('v=',$__Context->extras);
								$__Context->youtu_id = explode('&',$__Context->video_id[1]);
							 ?>
								<div class="thumbnailgrow noimgwh"><div class="wrap">
								<img src="http://img.youtube.com/vi/<?php echo $__Context->youtu_id[0] ?>/0.jpg" class="thumbnailimg"/></div></div>
							<?php }elseif(preg_match('/youtu.be/', $__Context->extras)){ ?>
							<?php 
								$__Context->youtu_id = str_replace('http://youtu.be/','',$__Context->extras);
							 ?>
								<div class="thumbnailgrow noimgwh"><div class="wrap">
								<img src="http://img.youtube.com/vi/<?php echo $__Context->youtu_id ?>/0.jpg" class="thumbnailimg"/></div></div>
							<?php }else{ ?>
							<?php 
								$__Context->video_id = explode('v=',$__Context->extras);
								$__Context->youtu_id = explode('&',$__Context->video_id[1]);
								$__Context->youtube_id = explode('?',$__Context->youtu_id[0]);
							 ?>							
								<div class="thumbnailgrow noimgwh"><div class="wrap">
								<img src="http://img.youtube.com/vi/<?php echo $__Context->youtube_id[0] ?>/0.jpg" class="thumbnailimg"/></div></div>
							<?php } ?>					
					<?php }elseif(preg_match('/vimeo/', $__Context->extras)){ ?>
						<?php 
							$__Context->thumbnail_id = str_replace('https://vimeo.com/','',$__Context->extras);
						 ?>
						<script>	
						//<!--<![CDATA[ 
						jQuery(function(){ 
							jQuery("#vimeothumbnail .vimeothumb").each(function(index){ 
							var thumbnail_id = jQuery(this).attr("id"); 
							jQuery.getJSON('https://www.vimeo.com/api/v2/video/' + thumbnail_id + '.json?callback=?', {format: "json"}, function(data) { 
								jQuery("#"+thumbnail_id).attr('src', data[0].thumbnail_medium); 
								}); 
						  
							}); 
						}); 
						//]]>--> 
						</script>
						<div class="thumbnailgrow noimgwh"><div class="wrap" id="vimeothumbnail">
							<img id="<?php echo $__Context->thumbnail_id ?>" class="vimeothumb thumbnailimg"/>
						</div></div>
					<?php }else{ ?>
						<div class="noimgwh"><div class="wrap nothumbfocus"></div></div>
					<?php } ?>
			<?php }else{ ?>
				<div class="noimgwh"><div class="wrap nothumbfocus"></div></div>
			<?php } ?>
			</a>	
			<div class="caption">
				<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl, 'listStyle', 'list', 'cpage','') ?>">
					<?php if($__Context->list_config['title']){ ?><h4><?php echo $__Context->document->getTitle($__Context->module_info->subject_cut_size) ?> <?php if($__Context->document->getCommentCount()){ ?><small><a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#comment">(<?php echo $__Context->document->getCommentCount() ?>)</a></small><?php } ?></h4><?php } ?>					
				</a>				
				<p class="cardinfoname nocolor">
					<?php if($__Context->module_info->use_category=='Y'){;
echo $__Context->category_list[$__Context->document->get('category_srl')]->title ?> &nbsp;<?php } ?>
					<?php if($__Context->list_config['regdate']){;
echo $__Context->document->getRegdate("Y.m.d") ?> &nbsp;<?php } ?>
					<?php if($__Context->list_config['nick_name']){;
echo $__Context->document->getNickName() ?> &nbsp;<?php } ?>
					<?php if($__Context->list_config['userID ']){;
echo $__Context->document->getUserID() ?> &nbsp;<?php } ?>
					<?php if($__Context->list_config['username']){;
echo $__Context->document->getUserName() ?> &nbsp;<?php } ?>
					<?php if($__Context->list_config['readed_count']){ ?> <?php echo $__Context->document->get('readed_count')>0?$__Context->document->get('readed_count'):'0' ?> Readed&nbsp;<?php } ?>
				</p>
				<?php if($__Context->list_config['summary']){ ?><p class="content"><?php echo $__Context->document->getSummary($__Context->module_info->content_cut_size) ?></p><?php } ?>
				<?php if($__Context->list_config['readed_count']||$__Context->list_config['voted_count']){ ?><p class="nocolor">
					<?php if($__Context->list_config['comment_status']&&$__Context->document->getCommentCount()){ ?>댓글 <a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#comment"><?php echo $__Context->document->getCommentCount() ?></a> &nbsp;<?php } ?>		
				</p><?php } ?>
				<?php if($__Context->val->eid=='video'){ ?>
					<?php if($__Context->document->getExtraValueHTML($__Context->val->idx)){ ?>
				<?php if($__Context->val->idx!=-1){ ?><div class="cardextra">
						<a href="#" onclick="window.open('<?php echo getUrl('document_srl',$__Context->document->document_srl,'listStyle','video','page','') ?>','video','width=<?php if($__Context->module_info->display_videoplaywidth){;
echo $__Context->module_info->display_videoplaywidth;
}else{ ?>800<?php } ?>,height=<?php if($__Context->module_info->display_videoplayheight){;
echo $__Context->module_info->display_videoplayheight;
}else{ ?>600<?php } ?>,resizable=yes');return false" class="btn btn-primary btn-xs"><i class="fa fa-video-camera fa-fw"></i> 보기</a>	
					<?php }else{ ?>
					<?php } ?>
				</div><?php } ?>			
				<?php } ?>					
			</div>	
			<?php if($__Context->grant->manager){ ?><div class="rcheckbox">
				<?php if($__Context->grant->manager){ ?><input class="checkbox" type="checkbox" name="cart" value="<?php echo $__Context->document->document_srl ?>" title="Check this" onclick="doAddDocumentCart(this)"<?php if($__Context->document->isCarted()){ ?> checked="checked"<?php } ?> /><?php } ?>
			</div><?php } ?>
			<div class="ribonicon">
				<?php if((int)($__Context->document->getRegdate('YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<span class="label label-primary">new</span>
				<?php }elseif((int)(zdate($__Context->document->get('last_update'),'YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<span class="label label-success">update</span>					
				<?php }elseif($__Context->document->variables[status]=='SECRET'){ ?>
				<span class="label label-success">secret</span>				
				<?php } ?>	
			</div>		
		</div>
	</div><?php } ?>
</div>
<div class="clearfix"></div>
</fieldset>
</form>
<div class="division-line mBottom20"></div>
<script>
var container = document.querySelector('#masonry-container');
var msnry = new Masonry( container, {
  // options...
  itemSelector: '.itemBox',
  columnWidth: 0
});
</script>