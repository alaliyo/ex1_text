<?php if(!defined("__XE__"))exit;?><!--#Meta:common/xeicon/xeicon.min.css--><?php $__tmp=array('common/xeicon/xeicon.min.css','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<?php echo $__Context->module_info->header_text ?>
<?php if($__Context->module_info->title){ ?><div id="board-header" class="page-header">
	<h1><a href="<?php echo getUrl('','mid',$__Context->mid,'listStyle',$__Context->listStyle) ?>"><?php echo $__Context->module_info->title ?></a>
	<small><span>::</span> <?php echo $__Context->module_info->sub_title ?></small></h1>
</div><?php } ?>