<?php if(!defined("__XE__"))exit;?><div class="cmt_editor">
<?php if($__Context->grant->write_comment && $__Context->oDocument->isEnableComment()){ ?>
<a name="commentwriteed_<?php echo $__Context->oDocument->document_srl ?>"></a>
<div id="commentwrite_<?php echo $__Context->oDocument->document_srl ?>" class="collapse paddingtb10 form-inline <?php if($__Context->module_info->display_commentwrite == 'Y'){ ?>in<?php }else{;
} ?>">
	<form action="./" method="post" onsubmit="return procFilter(this, insert_comment)" class="bd_wrt cmt_wrt"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
		<input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" />
		<input type="hidden" name="document_srl" value="<?php echo $__Context->oDocument->document_srl ?>" />
		<input type="hidden" name="comment_srl" value="" />
		<input type="hidden" name="content" value="" />
		<?php if($__Context->mi->cmt_wrt=='editor'){ ?><div class="cmt_editor"><?php echo $__Context->oDocument->getCommentEditor() ?></div><?php } ?>
		<?php if($__Context->mi->cmt_wrt=='simple'){ ?><div class="simple_wrt paddingb10">
			<div>
				<input type="hidden"  id="htm_<?php echo $__Context->oDocument->document_srl ?>" value="n" />
				<textarea id="editor_<?php echo $__Context->oDocument->document_srl ?>" class="form-control" cols="50" rows="4"></textarea>
			</div>
		</div><?php } ?>	
		<div class="pull-right"<?php if($__Context->mi->cmt_wrt!='editor'){ ?> style="display:none"<?php } ?>>
			<?php if(!$__Context->is_logged){ ?>
			<input class="form-control" type="text" name="nick_name" value="<?php echo $__Context->lang->writer ?>"  title="<?php echo $__Context->lang->writer ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
			<input class="form-control" type="password" name="password" value="<?php echo $__Context->lang->password ?>" title="<?php echo $__Context->lang->password ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
			<!-- <input class="form-control" type="text" name="email_address" value="<?php echo $__Context->lang->email_address ?>" title="<?php echo $__Context->lang->email_address ?>" onfocus="if(this.value==this.title)this.value='';return false;" /> -->
			<!-- <input class="form-control" type="text" name="homepage" value="<?php echo $__Context->lang->homepage ?>" title="<?php echo $__Context->lang->homepage ?>" onfocus="if(this.value==this.title)this.value='';return false;" /> -->
			<?php } ?>
			<?php if($__Context->is_logged){ ?>
			<label class="checkbox-inline" for="notify_message_<?php echo $__Context->oDocument->document_srl ?>">
			<input type="checkbox" name="notify_message" value="Y" id="notify_message_<?php echo $__Context->oDocument->document_srl ?>"/>
			<?php echo $__Context->lang->notify ?> </label>
			<?php } ?>
			<?php if($__Context->module_info->use_status!='PUBLIC'){ ?>
			<label class="checkbox-inline" for="is_secret_<?php echo $__Context->oDocument->document_srl ?>">
			<input type="checkbox" name="is_secret" value="Y" id="is_secret_<?php echo $__Context->oDocument->document_srl ?>"/>
			비밀글 </label>
			<?php } ?>
			<input class="btn btn-default btn-sm" type="submit" value="<?php echo $__Context->lang->cmd_submit ?>"/>
		</div>
		<div class="clearfix"></div>
	</form>
</div>
<?php if($__Context->rd_idx==0){ ?><div id="mod_cmt" class="collapse">
	<form action="./" method="post" onsubmit="return procFilter(this,insert_comment)" class="bd_wrt"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
		<input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" />
		<input type="hidden" name="document_srl" value="<?php echo $__Context->oDocument->get('document_srl') ?>" />
		<input type="hidden" name="comment_srl" value="" />
		<input type="hidden" name="content" value="" />
		<div class="simple_wrt paddingb10">
			<input type="hidden" id="htm_3" value="n" />
			<textarea id="editor_3" class="form-control" cols="50" rows="4"></textarea>
		</div>
		<div class="pull-left hide">
			<a class="btn btn-sm btn-default" href="<?php echo getUrl('act','dispBoardModifyComment','comment_srl',$__Context->comment->comment_srl) ?>">에디터모드</a>
		</div>		
		<div class="ie8 pull-right form-inline">
			<?php if(!$__Context->is_logged){ ?>
				<input class="form-control" type="text" name="nick_name" value="<?php echo $__Context->lang->writer ?>"  title="<?php echo $__Context->lang->writer ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
				<input class="form-control" type="password" name="password" value="<?php echo $__Context->lang->password ?>" title="<?php echo $__Context->lang->password ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
				<input class="form-control" type="text" name="email_address" value="<?php echo $__Context->lang->email_address ?>" title="<?php echo $__Context->lang->email_address ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
				<!-- <input class="form-control" type="text" name="homepage" value="<?php echo $__Context->lang->homepage ?>" title="<?php echo $__Context->lang->homepage ?>" onfocus="if(this.value==this.title)this.value='';return false;" /> -->
			<?php } ?>
			<?php if($__Context->is_logged){ ?>
				<label class="checkbox-inline">
				<input type="checkbox" name="notify_message" value="Y" id="notify_message" />
				<?php echo $__Context->lang->notify ?> </label>
			<?php } ?>
				<?php if($__Context->module_info->use_status!='PUBLIC'){ ?>
				<label class="checkbox-inline">
				<input type="checkbox" name="is_secret" value="Y" id="is_secret"/>
				비밀글 </label>
				<?php } ?>
				<input class="btn btn-default btn-sm bd_btn fr"  type="submit" value="<?php echo $__Context->lang->cmd_modify ?>" onclick="setTimeout('location.reload()',700);"/>	
				<a href="#" class="btn btn-default btn-sm" onclick="jQuery('#mod_cmt').fadeOut().parent().find('.mod_comment').focus();return false"><?php echo $__Context->lang->cmd_close ?></a>
		</div>
	</form>
</div><?php } ?>
<?php if($__Context->rd_idx==0){ ?><div id="re_cmt" class="collapse">
	<form action="./" method="post" onsubmit="return procFilter(this,insert_comment)" class="bd_wrt"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
		<input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" />
		<input type="hidden" name="document_srl" value="<?php echo $__Context->oDocument->document_srl ?>" />
		<input type="hidden" name="content" value="" />
		<input type="hidden" name="parent_srl" value="" />
		<div class="simple_wrt paddingb10">
			<input type="hidden" id="htm_2" value="n" />
			<textarea id="editor_2" class="form-control" cols="50" rows="4"></textarea>
		</div>
		<div class="pull-left hide">
			<a class="wysiwyg m_no btn btn-sm btn-default" href="#">에디터모드</a>
		</div>
		<div class="ie8 pull-right form-inline">
			<?php if(!$__Context->is_logged){ ?>
				<input class="form-control" type="text" name="nick_name" value="<?php echo $__Context->lang->writer ?>"  title="<?php echo $__Context->lang->writer ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
				<input class="form-control" type="password" name="password" value="<?php echo $__Context->lang->password ?>" title="<?php echo $__Context->lang->password ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
				<input class="form-control" type="text" name="email_address" value="<?php echo $__Context->lang->email_address ?>" title="<?php echo $__Context->lang->email_address ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
				<!-- <input class="form-control" type="text" name="homepage" value="<?php echo $__Context->lang->homepage ?>" title="<?php echo $__Context->lang->homepage ?>" onfocus="if(this.value==this.title)this.value='';return false;" /> -->
			<?php } ?>
				<?php if($__Context->is_logged){ ?>
				<label class="checkbox-inline">
				<input type="checkbox" name="notify_message" value="Y" id="notify_message"/>
				<?php echo $__Context->lang->notify ?> </label>
				<?php } ?>
				<?php if($__Context->module_info->use_status!='PUBLIC'){ ?>
				<label class="checkbox-inline">
				<input type="checkbox" name="is_secret" value="Y" id="is_secret"/>
				비밀글 </label>
				<?php } ?>
				<input class="btn btn-default btn-sm"  type="submit" value="<?php echo $__Context->lang->cmd_submit ?>"/>	
				<a href="#" class="btn btn-default btn-sm"  onclick="jQuery('#re_cmt').fadeOut().parent().find('.re_comment').focus();return false"><?php echo $__Context->lang->cmd_close ?></a>
		</div>
	</form>
</div><?php } ?>
<?php } ?>
</div>