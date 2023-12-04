<?php if(!defined("__XE__"))exit;
$__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_setting.html') ?>
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_header.html') ?>
<div class="write-form">
<form action="./" method="post" onsubmit="jQuery(this).find('input').each(function(){if(this.title==this.value)this.value='';});return procFilter(this, window.insert)" id="fo_write"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="act" value="<?php echo $__Context->act ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
<input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" />
<input type="hidden" name="content" value="<?php echo $__Context->oDocument->getContentText() ?>" />
<input type="hidden" name="document_srl" value="<?php echo $__Context->document_srl ?>" />
<div class="form-inline">	
		<?php if($__Context->module_info->use_category=='Y'){ ?><select name="category_srl" class="form-control">
			<option value=""><?php echo $__Context->lang->category ?></option>
			<?php if($__Context->category_list&&count($__Context->category_list))foreach($__Context->category_list as $__Context->val){ ?>
			<option <?php if(!$__Context->val->grant){ ?>disabled="disabled"<?php } ?> value="<?php echo $__Context->val->category_srl ?>" <?php if($__Context->val->grant&&$__Context->val->selected||$__Context->val->category_srl==$__Context->oDocument->get('category_srl')){ ?>selected="selected"<?php } ?>>
				<?php echo str_repeat("&nbsp;&nbsp;",$__Context->val->depth) ?> <?php echo $__Context->val->title ?> (<?php echo $__Context->val->document_count ?>)
			</option>
			<?php } ?>
		</select><?php } ?>
	<?php if($__Context->grant->manager){ ?>
	<?php  $__Context->_color = array('555555','222288','226622','2266EE','8866CC','88AA66','EE2222','EE6622','EEAA22','EEEE22')  ?>
		<select class="form-control" name="title_color" id="title_color"<?php if($__Context->oDocument->get('title_color')){ ?> style="color:#<?php echo $__Context->oDocument->get('title_color') ?>;"<?php } ?> onchange="this.style.color=this.options[this.selectedIndex].style.color;">
			<option value="" style="color:#CCCCCC;"><?php echo $__Context->lang->title_color ?></option>
			<?php if($__Context->_color&&count($__Context->_color))foreach($__Context->_color as $__Context->_col){ ?>
			<option value="<?php echo $__Context->_col ?>" style="color:#<?php echo $__Context->_col ?>"<?php if($__Context->oDocument->get('title_color')==$__Context->_col){ ?> selected="selected"<?php } ?>><?php echo $__Context->lang->title_color ?></option>
			<?php } ?>
		</select> &nbsp;
		<label class="checkbox-inline">
		<input type="checkbox" name="title_bold" id="title_bold" value="Y"<?php if($__Context->oDocument->get('title_bold')=='Y'){ ?> checked="checked"<?php } ?>/>
		<?php echo $__Context->lang->title_bold ?></label>
		<label class="checkbox-inline">
		<input type="checkbox" name="is_notice" value="Y"<?php if($__Context->oDocument->isNotice()){ ?> checked="checked"<?php } ?> id="is_notice" />
		<?php echo $__Context->lang->notice ?></label>
	<?php } ?>
		<label class="checkbox-inline">
		<input type="checkbox" name="comment_status" value="ALLOW"<?php if($__Context->oDocument->allowComment()){ ?> checked="checked"<?php } ?> id="comment_status" />
		<?php echo $__Context->lang->allow_comment ?></label>
		<label class="checkbox-inline">
		<input type="checkbox" name="allow_trackback" value="Y"<?php if($__Context->oDocument->allowTrackback()){ ?> checked="checked"<?php } ?> id="allow_trackback" />
		<?php echo $__Context->lang->allow_trackback ?></label>
		<?php if($__Context->is_logged){ ?>
		<label class="checkbox-inline">
		<input type="checkbox" name="notify_message" value="Y"<?php if($__Context->oDocument->useNotify()){ ?> checked="checked"<?php } ?> id="notify_message" />
		<?php echo $__Context->lang->notify ?></label>
       <?php } ?>
	<?php if(is_array($__Context->status_list)){ ?>
		<?php if($__Context->status_list&&count($__Context->status_list))foreach($__Context->status_list AS $__Context->key=>$__Context->value){ ?>
		<label class="radio-inline">
		<input type="radio" name="status" value="<?php echo $__Context->key ?>" id="<?php echo $__Context->key ?>" <?php if($__Context->oDocument->get('status') == $__Context->key || ($__Context->key == 'PUBLIC' && !$__Context->document_srl)){ ?>checked="checked"<?php } ?>/>
		<?php echo $__Context->value ?></label>
		<?php } ?>
	<?php } ?>		
</div>	
	
<div class="row paddingtb10">
	<div class="col-lg-12">
		<div class="input-group" style="width:100%;">
			<?php if($__Context->oDocument->getTitleText()){ ?>
			<input type="text" name="title" id="postTitle" class="" value="<?php echo htmlspecialchars($__Context->oDocument->getTitleText()) ?>" placeholder="제목"/>
			<?php }else{ ?>
			<input type="text" name="title" id="postTitle" class="" value="<?php echo $__Context->lang->title ?>" title="<?php echo $__Context->lang->title ?>" onfocus="if(this.value==this.title) this.value='';" placeholder="제목"/>
			<?php } ?>
		</div>		
	</div>	
</div>	
<?php if(count($__Context->extra_keys)){ ?>
<?php if($__Context->extra_keys&&count($__Context->extra_keys))foreach($__Context->extra_keys as $__Context->key => $__Context->val){ ?>
<div class="extra paddingb10" >
	<label<?php if($__Context->key=='2'){ ?> class="reserve"<?php } ?>><?php echo $__Context->val->name;
if($__Context->val->is_required=='Y'){ ?>&nbsp;(<?php echo $__Context->lang->is_required ?>)<?php } ?></label>
	<?php if($__Context->val->eid == 'reserve_date'){ ?>
	<input type="text" name="extra_vars<?php echo $__Context->key ?>" value="<?php echo $__Context->val->value ?>" class="reserve datepicker text" style="width:200px;">
	<?php }else{ ?>
	<?php echo $__Context->val->getFormHTML() ?>
	<?php } ?>
	<div class="clearfix"></div>
</div>
	<?php if($__Context->val->eid=='video'){ ?>
        <div class="alert alert-info font12">
        <i class="fa fa-youtube fa-fw"></i> 유투브 : 공유 > 동영상 공유 > 주소 입력. 유튜브 재생 목록 지원(모바일에서는 유튜브 연속 재생 불가능)<br/><i class="fa fa-vimeo-square fa-fw"></i> 비메오 : Link 주소 입력(숫자). link 주소 끝에 영어가 있을 경우 왼쪽 위, 제목 클릭해서 나오는 창의 주소입니다. (연속 재생 불가능)<br/><i class="fa fa-video-camera fa-fw"></i> 자체 동영상 사용 시 http:// 포함된 주소를 써주세요.(jwplayer 지원 mp4, m4v, f4v, mov, flv, mp3, acc 재생 가능)</div>
    <?php }else{ ?>
    <?php } ?>
<?php } ?>	
<?php } ?>
<div><?php echo $__Context->oDocument->getEditor() ?></div>
<?php if(!$__Context->is_logged){ ?>
<div class="form-inline paddingtb10">
	<div class="form-group">
		<input type="text" name="nick_name" class="form-control" value="<?php echo $__Context->lang->writer ?>" title="<?php echo $__Context->lang->writer ?>" onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
	<div class="form-group">	
		<input type="password" name="password" class="form-control" value="<?php echo $__Context->lang->password ?>" title="<?php echo $__Context->lang->password ?>"  onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
	<div class="form-group">	
		<input type="text" name="email_address" class="form-control" value="<?php echo $__Context->lang->email_address ?>" title="<?php echo $__Context->lang->email_address ?>"  onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
	<div class="form-group">
		<input type="text" name="homepage" class="form-control" value="<?php echo $__Context->lang->homepage ?>" title="<?php echo $__Context->lang->homepage ?>"  onfocus="if(this.value==this.title)this.value='';return false;" />
	</div>	
</div>	
<?php } ?>
<div class="pull-right paddingtb10">
	<?php if(!$__Context->oDocument->isExists() || $__Context->oDocument->get('status') == 'TEMP'){ ?>
	<!-- <button class="btn btn-default btn-sm" type="button" onclick="doDocumentLoad(this)"><?php echo $__Context->lang->cmd_load ?></button> -->
	<button class="btn btn-default btn-sm" type="button" onclick="doDocumentSave(this)"><?php echo $__Context->lang->cmd_temp_save ?></button>
	<?php } ?>
	<input class="btn btn-default btn-sm" type="submit" value="<?php echo $__Context->lang->cmd_registration ?>" />
</div>
</form>
</div>
<script>
$(function () {
	$.datetimepicker.setLocale('ko');
	$(".datepicker").datetimepicker({
		step: 5,
		format:'Y-m-d H:i'
	});
	$("input[name=extra_vars1]").on("change", function() {
		if ($(this).val() == "예약")
		{
			$(".reserve").show();
		}
		else
		{
			$(".reserve").hide();
		}
	});
	$("input[name=extra_vars1]:checked").trigger("change");
})
</script>
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_footer.html') ?>
