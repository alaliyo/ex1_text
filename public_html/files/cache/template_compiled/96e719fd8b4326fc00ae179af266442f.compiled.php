<?php if(!defined("__XE__"))exit;?><!--#Meta:modules/board/skins/KSO_application_form_02/css/board.css--><?php $__tmp=array('modules/board/skins/KSO_application_form_02/css/board.css','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<!--#Meta:modules/board/skins/KSO_application_form_02/css/font-awesome.min.css--><?php $__tmp=array('modules/board/skins/KSO_application_form_02/css/font-awesome.min.css','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<!--#Meta:modules/board/skins/KSO_application_form_02/js/board.js--><?php $__tmp=array('modules/board/skins/KSO_application_form_02/js/board.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<!--#Meta:modules/board/skins/KSO_application_form_02/js/masonry.pkgd.min.js--><?php $__tmp=array('modules/board/skins/KSO_application_form_02/js/masonry.pkgd.min.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<?php if(!$__Context->module_info->rbColor){;
$__Context->module_info->rbColor = '#d49130';
} ?>
<?php if($__Context->order_type == "desc"){;
$__Context->order_type = "asc";
}else{;
$__Context->order_type = "desc";
} ?>
<?php if(!$__Context->module_info->duration_new = (int)$__Context->module_info->duration_new){;
$__Context->module_info->duration_new = 12;
} ?>
<?php if(!$__Context->module_info->subject_cut_size = (int)$__Context->module_info->subject_cut_size){;
$__Context->module_info->subject_cut_size= 80;
} ?>
<?php if(!$__Context->module_info->content_cut_size = (int)$__Context->module_info->content_cut_size){;
$__Context->module_info->content_cut_size= 320;
} ?>
<?php if(!$__Context->module_info->thumnailnum){;
$__Context->module_info->thumnailnum = three;
} ?>
<?php if(!$__Context->module_info->thumbnail_type){;
$__Context->module_info->thumbnail_type = 'crop';
} ?>
<?php if(!$__Context->module_info->search_view){;
$__Context->module_info->search_view = 'B';
} ?>
<?php if(!$__Context->module_info->thumbnail_width){ ?>
<?php  $__Context->module_info->thumbnail_width = 555;  ?>
<?php } ?>
<?php if(!$__Context->module_info->thumbnail_height){ ?>
<?php  $__Context->module_info->thumbnail_height = 361;  ?>
<?php } ?>
<?php if($__Context->listStyle=='gallery'){ ?>
    <?php  $__Context->module_info->default_style = 'gallery' ?>
<?php }elseif($__Context->listStyle=='webzine'){ ?>
    <?php  $__Context->module_info->default_style = 'webzine' ?>
<?php }elseif($__Context->listStyle=='list'){ ?>
    <?php  $__Context->module_info->default_style = 'list' ?>
<?php }elseif($__Context->listStyle=='card'){ ?>
    <?php  $__Context->module_info->default_style = 'card' ?>	
<?php }elseif($__Context->listStyle=='video'){ ?>
    <?php  $__Context->module_info->default_style = 'video' ?>	
<?php }elseif($__Context->listStyle=='videolist'){ ?>
    <?php  $__Context->module_info->default_style = 'videolist' ?>
<?php }elseif($__Context->listStyle=='blog'){ ?>
	<?php  $__Context->module_info->default_style = 'blog' ?>
<?php }elseif(!in_array($__Context->module_info->default_style,array('list','webzine','gallery','card','blog','video','videolist'))){ ?>
    <?php  $__Context->module_info->default_style = 'list' ?>
<?php } ?>
<?php  $__Context->cate_list = array(); $__Context->current_key = null;  ?>
<?php if($__Context->category_list&&count($__Context->category_list))foreach($__Context->category_list as $__Context->key=>$__Context->val){ ?>
	<?php if(!$__Context->val->depth){ ?>
		<?php 
			$__Context->cate_list[$__Context->key] = $__Context->val;
			$__Context->cate_list[$__Context->key]->children = array();
			$__Context->current_key = $__Context->key;
		 ?>
	<?php }elseif($__Context->current_key){ ?>
		<?php  $__Context->cate_list[$__Context->current_key]->children[] = $__Context->val  ?>
	<?php } ?>
<?php } ?>
<?php 
	$__Context->mi = $__Context->module_info;
	if($__Context->_COOKIE['bd_editor']) $__Context->mi->cmt_wrt = $__Context->_COOKIE['bd_editor'];	
	if(!$__Context->mi->cmt_wrt) $__Context->mi->cmt_wrt = 'simple';
 ?>