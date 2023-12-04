<?php if(!defined("__XE__"))exit;?><form action="./" method="get" class="boardListForm"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
    <fieldset>
<?php if($__Context->document_list || $__Context->notice_list){ ?><table class="table table-hover">
    
	<tbody class="custom_tbody">
		
		<?php if($__Context->notice_list&&count($__Context->notice_list))foreach($__Context->notice_list as $__Context->no=>$__Context->document){ ?><tr class="<?php if($__Context->document->getExtraEidValue('video')){ ?>info<?php }else{ ?>active<?php } ?>">
			<?php if($__Context->list_config&&count($__Context->list_config))foreach($__Context->list_config as $__Context->key=>$__Context->val){ ?>
			<?php if($__Context->val->type=='no' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center rbColor ">
				<?php if($__Context->document_srl==$__Context->document->document_srl){ ?>&raquo;<?php };
if($__Context->document_srl!=$__Context->document->document_srl){ ?><strong><?php echo $__Context->lang->notice ?></strong><?php } ?>
			</td><?php } ?>
			<?php if($__Context->val->type=='title' && $__Context->val->idx==-1){ ?>
			<!-- <?php if($__Context->module_info->use_category=='Y'){ ?><td class="hidden-xs width70 text-center nowrap"><strong><?php echo $__Context->category_list[$__Context->document->get('category_srl')]->title ?></strong></td><?php } ?> -->
			<td>
				<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl, 'listStyle', 'list', 'cpage','') ?>" class="title custom_title">
					<strong><?php echo $__Context->document->getTitle($__Context->module_info->subject_cut_size) ?></strong>
				</a> 		
				<?php if($__Context->document->getCommentCount()){ ?>
				 <small><a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#comment">(<?php echo $__Context->document->getCommentCount() ?>)</a></small>
				<?php } ?>
				<?php if($__Context->document->getTrackbackCount()){ ?>
				 <small><a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#trackback">(<?php echo $__Context->document->getTrackbackCount() ?>)</a></small>
				<?php } ?>
				<?php if((int)($__Context->document->getRegdate('YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<!-- <span class="label label-primary"><i class="fa fa-bell-o"></i></span> -->
				<?php }else{ ?>
				<?php if((int)(zdate($__Context->document->get('last_update'),'YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<!-- <span class="label label-success"><i class="fa fa-repeat"></i></span> -->
				<?php } ?>
				<?php } ?>
				<?php if($__Context->document->hasUploadedFiles()=='Y' && $__Context->module_info->icon_file=='Y'){ ?><span class="label label-info"><i class="fa fa-file-text-o"></i></span><?php } ?>
				<?php if($__Context->document->variables[status]=='SECRET'){ ?><span class="label label-warning"><i class="fa fa-unlock-alt"></i></span><?php } ?>
			</td>
			<?php } ?>
			<?php if($__Context->val->type=='nick_name' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><a href="#popup_menu_area" class="member_<?php echo $__Context->document->get('member_srl') ?> nocolorlist" onclick="return false" title="<?php echo $__Context->document->getNickName() ?>"><?php echo $__Context->document->getNickName() ?></a></td><?php } ?>
			<?php if($__Context->val->type=='user_id' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><?php echo $__Context->document->getUserID() ?></td><?php } ?>
			<?php if($__Context->val->type=='user_name' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><?php echo $__Context->document->getUserName() ?></td><?php } ?>
            <?php if($__Context->val->type=='regdate' && $__Context->val->idx==-1){ ?><td  class="tabledate custom_date">
				<div class="custom_day"><?php echo $__Context->document->getRegdate('d') ?></div>
				<div class="custom_ym"><?php echo $__Context->document->getRegdate('Y.m') ?></div>
			</td><?php } ?>
			<?php if($__Context->val->type=='last_update' && $__Context->val->idx==-1){ ?><td class="hidden-xs tabledate"><?php echo zdate($__Context->document->get('last_update'),'Y.m.d') ?></td><?php } ?>
			<?php if($__Context->val->type=='last_post' && $__Context->val->idx==-1){ ?><td class="hidden-xs tabledate">
				<?php if((int)($__Context->document->get('comment_count'))>0){ ?>
					<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl) ?>#<?php echo $__Context->document->document_srl ?>_comment" title="<?php echo getTimeGap($__Context->document->get('last_update'), "H:i") ?>"><?php echo zdate($__Context->document->get('last_update'),'Y.m.d');
if($__Context->document->getLastUpdater()){ ?><small>(by <?php echo $__Context->document->getLastUpdater() ?>)</small><?php } ?></a>
				<?php } ?>
				<?php if((int)($__Context->document->get('comment_count'))==0){;
} ?>
			</td><?php } ?>
			<?php if($__Context->val->type=='readed_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center"><?php echo $__Context->document->get('readed_count')>0?$__Context->document->get('readed_count'):'0' ?></td><?php } ?>
			<?php if($__Context->val->type=='voted_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center"><?php echo $__Context->document->get('voted_count')!=0?$__Context->document->get('voted_count'):'0' ?></td><?php } ?>
			<?php if($__Context->val->type=='blamed_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center"><?php echo $__Context->document->get('blamed_count')!=0?$__Context->document->get('blamed_count'):'0' ?></td><?php } ?>
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
		
		<?php if($__Context->document_list&&count($__Context->document_list))foreach($__Context->document_list as $__Context->no=>$__Context->document){ ?><tr<?php if($__Context->document_srl==$__Context->document->document_srl){ ?> class="active"<?php } ?>>
			<?php if($__Context->list_config&&count($__Context->list_config))foreach($__Context->list_config as $__Context->key=>$__Context->val){ ?>
			<?php if($__Context->val->type=='no' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center">
				<?php if($__Context->document_srl==$__Context->document->document_srl){ ?><i class="icon-double-angle-right"></i><?php } ?>
				<?php if($__Context->document_srl!=$__Context->document->document_srl){;
echo $__Context->no;
} ?>
			</td><?php } ?>
			<?php if($__Context->val->type=='title' && $__Context->val->idx==-1){ ?>
			<!-- <?php if($__Context->module_info->use_category=='Y'){ ?><td class="hidden-xs width70 nocolorlist nowrap text-center overflow" title="<?php echo $__Context->category_list[$__Context->document->get('category_srl')]->title ?>"><?php echo $__Context->category_list[$__Context->document->get('category_srl')]->title ?></td><?php } ?> -->
			<td>
				<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl, 'listStyle', 'list', 'cpage','') ?>" class="title custom_title">
					<span><?php echo $__Context->document->getTitle($__Context->module_info->subject_cut_size) ?></span>
				</a> 		
				<?php if($__Context->document->getCommentCount()){ ?>
				<small><a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#comment">(<?php echo $__Context->document->getCommentCount() ?>)</a></small>
				<?php } ?>
				<?php if($__Context->document->getTrackbackCount()){ ?>
				<small><a href="<?php echo getUrl('document_srl', $__Context->document->document_srl) ?>#trackback">(<?php echo $__Context->document->getTrackbackCount() ?>)</a></small>
				<?php } ?>
				<?php if((int)($__Context->document->getRegdate('YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<!-- <small><span class="label label-primary"><i class="fa fa-bell-o"></i></span></small> -->
				<?php }else{ ?>
				<?php if((int)(zdate($__Context->document->get('last_update'),'YmdHis')>date("YmdHis", time()-$__Context->module_info->duration_new*60*60))){ ?>
				<!-- <small><span class="label label-success"><i class="fa fa-repeat"></i></span></small> -->
				<?php } ?>
				<?php } ?>
				<?php if($__Context->document->hasUploadedFiles()=='Y' && $__Context->module_info->icon_file=='Y'){ ?><small><span class="label label-info"><i class="fa fa-file-text-o"></i></span></small><?php } ?>
				<?php if($__Context->document->variables[status]=='SECRET'){ ?><small><span class="label label-warning"><i class="fa fa-unlock-alt"></i></span></small><?php } ?>
			</td>
			<?php } ?>
			<?php if($__Context->val->type=='nick_name' && $__Context->val->idx==-1){ ?><td class="hidden-xs nocolorlist tableuser"><a href="#popup_menu_area" class="member_<?php echo $__Context->document->get('member_srl') ?>" onclick="return false" title="<?php echo $__Context->document->getNickName() ?>"><?php echo $__Context->document->getNickName() ?></a></td><?php } ?>
			<?php if($__Context->val->type=='user_id' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><?php echo $__Context->document->getUserID() ?></td><?php } ?>
			<?php if($__Context->val->type=='user_name' && $__Context->val->idx==-1){ ?><td class="hidden-xs tableuser"><?php echo $__Context->document->getUserName() ?></td><?php } ?>
			<?php if($__Context->val->type=='regdate' && $__Context->val->idx==-1){ ?><td  class="tabledate custom_date" title="<?php echo getTimeGap($__Context->document->get('regdate'), "H:i") ?>">
				<div class="custom_day"><?php echo $__Context->document->getRegdate('d') ?></div>
				<div class="custom_ym"><?php echo $__Context->document->getRegdate('Y.m') ?></div>
			</td><?php } ?>
			<?php if($__Context->val->type=='last_update' && $__Context->val->idx==-1){ ?><td class="hidden-xs tabledate"><?php echo zdate($__Context->document->get('last_update'),'Y.m.d') ?></td><?php } ?>
			<?php if($__Context->val->type=='last_post' && $__Context->val->idx==-1){ ?><td class="hidden-xs tabledate">
				<?php if((int)($__Context->document->get('comment_count'))>0){ ?>
					<a href="<?php echo getUrl('document_srl',$__Context->document->document_srl) ?>#<?php echo $__Context->document->document_srl ?>_comment" title="<?php echo getTimeGap($__Context->document->get('last_update'), "H:i") ?>"><?php echo zdate($__Context->document->get('last_update'),'Y.m.d') ?><br/><?php if($__Context->document->getLastUpdater()){ ?><small>(by <?php echo $__Context->document->getLastUpdater() ?>)</small><?php } ?></a>
				<?php } ?>
				<?php if((int)($__Context->document->get('comment_count'))==0){;
} ?>
			</td><?php } ?>
			<?php if($__Context->val->type=='readed_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center"><?php echo $__Context->document->get('readed_count')>0?$__Context->document->get('readed_count'):'0' ?></td><?php } ?>
			<?php if($__Context->val->type=='voted_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center"><?php echo $__Context->document->get('voted_count')!=0?$__Context->document->get('voted_count'):'0' ?></td><?php } ?>
			<?php if($__Context->val->type=='blamed_count' && $__Context->val->idx==-1){ ?><td class="hidden-xs width70 text-center"><?php echo $__Context->document->get('blamed_count')!=0?$__Context->document->get('blamed_count'):'0' ?></td><?php } ?>
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
			<?php if($__Context->val->idx!=-1){ ?><td class="width50 hidden-xs ">
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
</table><?php } ?>
</fieldset>
</form>
