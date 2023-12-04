<?php if(!defined("__XE__"))exit;?><section class="section">
<!--#Meta:modules/imageprocess/tpl/js/ipx_moudule.js--><?php $__tmp=array('modules/imageprocess/tpl/js/ipx_moudule.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<!--#Meta:modules/imageprocess/tpl/js/jscolor.js--><?php $__tmp=array('modules/imageprocess/tpl/js/jscolor.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
        <h1><?php echo $__Context->lang->imageprocess ?></h1>
		<?php Context::addJsFile("modules/imageprocess/ruleset/imageprocessModuleConfig.xml", FALSE, "", 0, "body", TRUE, "") ?><form  action="./" method="post" class="x_form-horizontal"><input type="hidden" name="error_return_url" value="<?php echo htmlspecialchars(getRequestUriByServerEnviroment(), ENT_COMPAT | ENT_HTML401, 'UTF-8', false) ?>" /><input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" /><input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" /><input type="hidden" name="ruleset" value="imageprocessModuleConfig" />
                <input type="hidden" name="module" value="imageprocess" />
                <input type="hidden" name="act" value="procImageprocessAdminInsertModuleConfig" />
                <input type="hidden" name="success_return_url" value="<?php echo getRequestUriByServerEnviroment() ?>" />
                <input type="hidden" name="target_module_srl" value="<?php echo $__Context->module_info->module_srl?$__Context->module_info->module_srl:$__Context->module_srls ?>" />
                <div class="x_control-group">
                        <label for="use_resize" class="x_control-label"><?php echo $__Context->lang->cmd_resize_use ?></label>
                        <div class="x_controls">
				<label class="x_inline" for="resize_use"><input type="checkbox" name="resize_use" value="Y"<?php if($__Context->ipx_module_info->resize){ ?> checked="checked"<?php };
if($__Context->ipx_info->resize_use != 'Y'){ ?> disabled="disabled"<?php } ?> /> <?php echo $__Context->lang->use ?></label>
				<?php if($__Context->ipx_info->resize_use == 'Y'){ ?><p class="x_help-inline"><?php echo $__Context->lang->msg_Resize_use ?></p><?php } ?>
                                <?php if($__Context->ipx_info->resize_use != 'Y'){ ?><p class="x_help-inline"><?php echo $__Context->lang->cmd_no_resize  ?></p><?php } ?>
                        </div>
                </div>
                <div class="x_control-group">
                        <label for="use_watermark" class="x_control-label"><?php echo $__Context->lang->cmd_watermark ?></label>
                        <div class="x_controls">
				<div class="module_list"><input type="checkbox" value="Y" name="watermark_use"<?php if($__Context->ipx_module_info->watermark && $__Context->ipx_info->watermark_use == 'Y'){ ?> checked="checked"<?php };
if($__Context->ipx_info->watermark_use != 'Y'){ ?> disabled="disabled"<?php } ?> /> <?php echo $__Context->lang->use ?>
			<?php if($__Context->ipx_info->watermark_use == 'Y'){ ?><p class="x_help-inline"><?php echo $__Context->lang->msg_watermark_use ?></p><?php } ?>
			 <?php if($__Context->ipx_info->watermark_use != 'Y'){ ?><p class="x_help-inline"><?php echo $__Context->lang->cmd_no_watermark  ?></p><?php } ?>
	<div class="each_logo"<?php if(!$__Context->ipx_module_info->watermark){ ?> style="display:none"<?php } ?>>
		<div class="x_control-group">
			<label class="x_control-label" for="module_category_srl"><?php echo $__Context->lang->each_watermark ?></label>
			<div class="x_controls">
				<?php if($__Context->stampList&&count($__Context->stampList))foreach($__Context->stampList as $__Context->fn=>$__Context->stamp){ ?>
					<label class="x_inline"><input type="radio" value="<?php echo $__Context->stamp ?>" name="watermark" <?php if($__Context->stamp == $__Context->ipx_module_info->each_watermark){ ?> checked="checked"<?php } ?> /> <br /><img src="<?php echo $__Context->stamp ?>"><br /><?php echo $__Context->fn ?></label   >
				<?php } ?>
				<br /><?php echo $__Context->lang->msg_watermark ?>
			</div>
		</div>
		<div class="x_control-group">
			<label class="x_control-label" for="module_category_srl"><?php echo $__Context->lang->each_water_margin ?></label>
			<div class="x_controls">
				<label class="x_inline"><?php echo $__Context->lang->xmargin ?>
				<input type="text" name="xmargin" value="<?php echo $__Context->ipx_module_info->each_xmargin ?>" class="inputTypeText w40" ></label>
				<label class="x_inline"><?php echo $__Context->lang->ymargin ?>
				<input type="text" name="ymargin" value="<?php echo $__Context->ipx_module_info->each_ymargin ?>" class="inputTypeText w40" ></label>
				<br /><?php echo $__Context->lang->msg_water_margin ?>
			</div>
		</div>
		<div class="x_control-group">
			<label class="x_control-label" for="module_category_srl"><?php echo $__Context->lang->each_water_position ?></label>
			<div class="x_controls">
				<?php if($__Context->lang->watermark_type&&count($__Context->lang->watermark_type))foreach($__Context->lang->watermark_type as $__Context->k => $__Context->v){ ?>
					<label class="x_inline"><input type="radio" id="watermark" name="water_position" value="<?php echo $__Context->k ?>" <?php if($__Context->ipx_module_info->water_position == $__Context->k){ ?>checked="checked"<?php } ?> /> <?php if(file_exists("./modules/imageprocess/tpl/images/".$__Context->k.".png")){ ?><br /><img src="/modules/imageprocess/tpl/images/<?php echo $__Context->k ?>.png"><?php } ?> <br /> <?php echo $__Context->v ?></label>
				<?php } ?>
				<br />* <?php echo $__Context->lang->msg_water_position ?>
			</div>
		</div>
	</div>
</div>
                        </div>
                </div>
                <div class="x_control-group">
                        <label for="use_textlogo" class="x_control-label"><?php echo $__Context->lang->cmd_textlogo ?></label>
                        <div class="x_controls">
               			<div class="module_list"><input type="checkbox" value="Y" name="textlogo_use"<?php if($__Context->ipx_module_info->textlogo){ ?> checked="checked"<?php };
if($__Context->ipx_info->textlogo_use != 'Y'){ ?> disabled="disabled"<?php } ?> /> 
				<?php echo $__Context->lang->use ?>
				<?php if($__Context->ipx_info->textlogo_use == 'Y'){ ?><p class="x_help-inline"><?php echo $__Context->lang->msg_textlogo_use ?></p><?php } ?>
				 <?php if(!$__Context->ipx_info->textlogo){ ?><p class="x_help-inline"><?php echo $__Context->lang->cmd_no_textlogo ?></p><?php } ?>
	<div class="each_logo"<?php if(!$__Context->ipx_module_info->textlogo){ ?> style="display:none;"<?php } ?>>
		<input type="text" name="logo" value="<?php echo $__Context->ipx_module_info->logo ?>" />
		<select name="position">
		<option value=''><?php echo $__Context->lang->logo_position ?></option>
		<?php if($__Context->lang->logo_position_type&&count($__Context->lang->logo_position_type))foreach($__Context->lang->logo_position_type as $__Context->k => $__Context->v){ ?>
		<option value="<?php echo $__Context->k ?>" <?php if($__Context->ipx_module_info->position == $__Context->k){ ?>selected="selected"<?php } ?>><?php echo $__Context->v ?> </option>
		<?php } ?>
		</select>
		<?php echo $__Context->lang->cmd_logo_fg ?> : <input type="text" name="fg" class="jscolor" style="width:50px;"  value="<?php echo $__Context->ipx_module_info->fg ?>" />
		<?php echo $__Context->lang->cmd_logo_bg ?> : <input type="text"  style="width:50px;" name="bg" class="jscolor" value="<?php echo $__Context->ipx_module_info->bg ?>" />
	</div>
</div> 
                        </div>
                </div>
                <div class="x_control-group">
                        <label class="x_control-label"><?php echo $__Context->lang->original_store ?></label>
                        <div class="x_controls">
				 <label class="x_inline" for="original_store"><input type="checkbox" name="ofile_use" value="Y"<?php if($__Context->ipx_module_info->ofile){ ?> checked="checked"<?php };
if($__Context->ipx_info->original_store != 'Y'){ ?> disabled="disabled"<?php } ?> /> <?php echo $__Context->lang->use ?></label>
                                <?php if($__Context->ipx_info->original_store != 'Y'){ ?><p class="x_help-inline"><?php echo $__Context->lang->cmd_no_original_store  ?></p><?php } ?>
                        </div>
                </div>
                <div class="btnArea">
                        <button type="submit" class="x_btn x_btn-primary"><?php echo $__Context->lang->cmd_save ?></button>
                </div>
        </form>
</section>
