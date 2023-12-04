<?php if(!defined("__XE__"))exit;
$__Context->oDB = &DB::getInstance();
 $__Context->query = $__Context->oDB->_query('select count(*) as total from xe_documents where module_srl ='.$__Context->module_info->module_srl);
 $__Context->result = $__Context->oDB->_fetch($__Context->query);
 ?>
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_setting.html') ?>
<!--#Meta:modules/board/skins/KSO_v1/js/jquery.cookie.js--><?php $__tmp=array('modules/board/skins/KSO_v1/js/jquery.cookie.js','body','','');Context::loadFile($__tmp);unset($__tmp); ?>
<script>//<![CDATA[
var bdLogin = "<?php if(!$__Context->is_logged){;
echo $__Context->lang->bd_login ?>@<?php echo htmlspecialchars_decode(getUrl('act','dispMemberLoginForm'));
} ?>";
jQuery(function($){
	board('#bd_<?php echo $__Context->mi->module_srl ?>_<?php echo $__Context->oDocument->document_srl ?>');
});
//]]></script>
<?php if($__Context->module_info->default_style=='video'){;
$__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','video.html');
} ?>
<?php if($__Context->module_info->default_style=='videolist'){;
$__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','videolist.html');
} ?>
<?php if($__Context->module_info->default_style!='video' && $__Context->module_info->default_style!='videolist'){ ?>
<?php  
	$__Context->videolistwidth	= $__Context->module_info->display_videoplaywidth+280 ;
 ?>
<div id="responBoard" class="wow fadeIn" style="animation-delay: 0.6s;">
<div id="bd_<?php echo $__Context->mi->module_srl ?>_<?php echo $__Context->oDocument->document_srl ?>">
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_header.html') ?>
<?php if($__Context->oDocument->isExists() && $__Context->module_info->default_style != 'blog'){ ?>
    <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','view_document.html') ?>
<script language="JavaScript">
function checkHotkey(){
	if ( (event.srcElement.tagName != 'INPUT') && (event.srcElement.tagName != 'TEXTAREA') ){
    if (event.keyCode=='110') location.replace('<?php echo getUrl('document_srl',$__Context->beforeDoc,'listStyle',$__Context->listStyle, 'cpage','', 'page', '') ?>');
	if (event.keyCode=='98') location.replace('<?php echo getUrl('document_srl',$__Context->afterDoc,'listStyle',$__Context->listStyle, 'cpage','', 'page', '') ?>');
  }
}
document.onkeypress=checkHotkey;
</script>	
<?php } ?>
<?php  foreach($__Context->document_list as $__Context->key => $__Context->val) { ?>
	<?php if($__Context->val->getExtraEidValue('use_reserve')[0] == '예약' && strtotime($__Context->val->getExtraEidValue('reserve_date')) >= time() && !$__Context->grant->manager){ ?>
		<?php  unset($__Context->document_list[$__Context->key]) ?>
	<?php } ?>
<?php } ?>
<?php if($__Context->oDocument->isExists() && $__Context->module_info->display_viewdocumentlist== 'N'){ ?>
<?php }else{ ?>
<?php if($__Context->module_info->display_listset_button=='Y'){ ?><div>
	<div class="btn-group btn-group-sm pull-right paddingb10 hidden-xs">
		<?php if($__Context->grant->manager){;
if($__Context->module_info->display_setup_button== 'Y'){ ?>
		<a class="btn btn-default" href="<?php echo getUrl('act','dispBoardAdminBoardInfo') ?>" title="<?php echo $__Context->lang->cmd_setup ?>"><i class="fa fa-cog"></i></a>
		<?php };
} ?>
		<?php if($__Context->module_info->display_videoplay=='Y'){ ?>
		<a href="<?php echo getUrl('listStyle','videolist','act','','document_srl','') ?>" class="btn btn-default"  target="_blank" onclick="window.open(this.href,'videolist','width=<?php if($__Context->module_info->display_videoplaylistuse=='N'){;
if($__Context->module_info->display_videoplaywidth){;
echo $__Context->module_info->display_videoplaywidth;
}else{ ?>800<?php };
}else{;
if($__Context->module_info->display_videoplaywidth){;
echo $__Context->videolistwidth;
}else{ ?>1080<?php };
} ?>px,height=<?php if($__Context->module_info->display_videoplayheight){;
echo $__Context->module_info->display_videoplayheight;
}else{ ?>600<?php } ?>px'); return false;"><i class="fa fa-video-camera"></i></a><?php }else{;
} ?>	
		<a class="btn btn-default <?php if($__Context->module_info->default_style=='list'){ ?>active<?php } ?>" href="<?php echo getUrl('listStyle','list','act','','document_srl','') ?>" title="Classic Style"><i class="fa fa-list"></i></a>
		<a class="btn btn-default <?php if($__Context->module_info->default_style=='webzine'){ ?>active<?php } ?>" href="<?php echo getUrl('listStyle','webzine','act','','document_srl','') ?>" title="Zine Style"><i class="fa fa-th-list"></i></a>
		<a class="btn btn-default <?php if($__Context->module_info->default_style=='card'){ ?>active<?php } ?>" href="<?php echo getUrl('listStyle','card','act','','document_srl','') ?>" title="card Style"><i class="fa fa-th"></i></a>
		<a class="btn btn-default <?php if($__Context->module_info->default_style=='gallery'){ ?>active<?php } ?>" href="<?php echo getUrl('listStyle','gallery','act','','document_srl','') ?>" title="Gallery Style"><i class="fa fa-th-large"></i></a>
		<?php if($__Context->grant->manager){ ?><a class="btn btn-default" href="<?php echo getUrl('','module','document','act','dispDocumentManageDocument') ?>" onclick="popopen(this.href,'manageDocument'); return false;"><i class="fa fa-check-square-o"></i></a><?php } ?>
	</div>
	<div class="btn-group hidden-lg hidden-md hidden-sm pull-right">
		<button type="button" class="btn btn-default"><i class="fa fa-cog"></i></button>
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		<span class="caret"></span>
		<span class="sr-only">Toggle Dropdown</span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="<?php echo getUrl('listStyle','list','act','','document_srl','') ?>" title="Classic Style"><i class="fa fa-list"></i> 리스트형</a></li>
			<li><a href="<?php echo getUrl('listStyle','webzine','act','','document_srl','') ?>" title="Zine Style"><i class="fa fa-th-list"></i> 웹진형</a></li>
			<li><a href="<?php echo getUrl('listStyle','card','act','','document_srl','') ?>" title="card Style"><i class="fa fa-th"></i> 카드형</a></li>
			<li><a href="<?php echo getUrl('listStyle','gallery','act','','document_srl','') ?>" title="Gallery Style"><i class="fa fa-th-large"></i> 갤러리형</a></li>
			<?php if($__Context->grant->manager && $__Context->module_info->display_setup_button== 'N'){;
}else{ ?>
			<li><a href="<?php echo getUrl('act','dispBoardAdminBoardInfo') ?>" title="<?php echo $__Context->lang->cmd_setup ?>"><i class="fa fa-cog"></i> 설정</a>
			<?php } ?>			
			<?php if($__Context->grant->manager){ ?><li><a href="<?php echo getUrl('','module','document','act','dispDocumentManageDocument') ?>" onclick="popopen(this.href,'manageDocument'); return false;"><i class="fa fa-check-square-o"></i> 글관리</a></li><?php } ?>
	  </ul>
	</div>
</div><?php } ?>
<div class="nav-pills-cover">
	<?php if($__Context->module_info->use_category=='Y'){ ?><ul class="nav <?php if($__Context->module_info->display_categoryset_button == 'nonav'){ ?>hidden<?php }else{ ?>nav-pills<?php } ?>">
        <li<?php if(!$__Context->category){ ?> class="active"<?php } ?> style="margin-bottom:0;">
            <a href="<?php echo getUrl('category','','page','','document_srl','') ?>" title="<?php echo $__Context->lang->document_count ?> '<?php echo number_format($__Context->total_count) ?>'" class="nav_top_title colorBgHover">
				<?php echo $__Context->lang->total ?> <?php if($__Context->module_info->display_categoryset_badge=='Y'){ ?><span class="badge"><?php echo $__Context->result->total ?></span><?php } ?>
			</a>
        </li>
        <li class="dropdown"<?php if($__Context->category){ ?> class="active"<?php } ?> style="margin-bottom:0;">
			<a class="dropdown-toggle nav_top_title" data-toggle="dropdown" href="#">
				분류 &nbsp;<i class="bi bi-caret-down-fill"></i>
			</a>
			<ul class="dropdown-menu" role="menu">
				<?php if($__Context->cate_list&&count($__Context->cate_list))foreach($__Context->cate_list as $__Context->key=>$__Context->val){ ?><li<?php if($__Context->category==$__Context->val->category_srl){ ?> class="active"<?php } ?>>
					<a href="<?php echo getUrl(category,$__Context->val->category_srl,'document_srl','', 'page', '') ?>">
						<?php echo $__Context->val->title ?> <?php if($__Context->module_info->display_categoryset_badge=='Y'){ ?><span class="badge pull-right"><?php echo $__Context->val->document_count ?></span><?php } ?>
					</a>
				</li><?php } ?>
			</ul>
        </li>
    </ul><?php } ?>
</div>
<div class="alert_cover">
    <?php if(!$__Context->document_list && !$__Context->notice_list){ ?><div<?php if($__Context->module_info->search_view=='T'){ ?> class="alert alert-default mTop20"<?php };
if($__Context->module_info->search_view!='T'){ ?> class="alert alert-default"<?php } ?> ><?php echo $__Context->lang->no_documents ?></div><?php } ?>
</div>
<?php if($__Context->module_info->default_style == 'webzine'){ ?>
    <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_style.webzine.html') ?>
<?php }elseif($__Context->module_info->default_style == 'gallery'){ ?>
    <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_style.gallery.html') ?>
<?php }elseif($__Context->module_info->default_style == 'card'){ ?>
    <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_style.card.html') ?>
<?php }elseif($__Context->module_info->default_style=='blog'){ ?>
<?php if($__Context->document_list&&count($__Context->document_list))foreach($__Context->document_list as $__Context->no=>$__Context->oDocument){ ?>
	<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_style.blog.html') ?>
<?php } ?>
<?php }else{ ?>	
    <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_style.list.html') ?>
<?php } ?>
<div class="sign_btn">
	<!-- <a class="btn btn-default" href="<?php echo getUrl('act','dispBoardTagList') ?>" title="Tag List" role="button">태그</a> -->
	<?php if($__Context->module_info->display_videoplay=='Y'){ ?>
	<a href="<?php echo getUrl('listStyle','videolist','act','','document_srl','') ?>" class="btn btn-default hide"  target="_blank" onclick="window.open(this.href,'videolist','width=<?php if($__Context->module_info->display_videoplaylistuse=='N'){;
if($__Context->module_info->display_videoplaywidth){;
echo $__Context->module_info->display_videoplaywidth;
}else{ ?>800<?php };
}else{;
if($__Context->module_info->display_videoplaywidth){;
echo $__Context->videolistwidth;
}else{ ?>1080<?php };
} ?>px,height=<?php if($__Context->module_info->display_videoplayheight){;
echo $__Context->module_info->display_videoplayheight;
}else{ ?>600<?php } ?>px'); return false;">전체보기</a><?php }else{;
} ?>
	<?php if($__Context->grant->write_document){ ?><a class="btn btn-default btn" href="<?php echo getUrl('act','dispBoardWrite','document_srl','') ?>" role="button"><?php echo $__Context->lang->cmd_write ?></a><?php } ?>
	<?php if($__Context->grant->manager){ ?><a class="btn btn-default btn" href="<?php echo getUrl('','module','document','act','dispDocumentManageDocument') ?>" onclick="popopen(this.href,'manageDocument');return false"><?php echo $__Context->lang->cmd_manage_document ?></a><?php } ?>
</div>
<div class="nav-pills-cover">
    <?php if($__Context->module_info->search_view=='B'){ ?><div>
        <?php if($__Context->grant->view){ ?><form action="<?php echo getUrl() ?>" method="get" onsubmit="return procFilter(this, search)" class="form-inline"  role="form"><input type="hidden" name="act" value="<?php echo $__Context->act ?>" />
            <input type="hidden" name="vid" value="<?php echo $__Context->vid ?>" />
            <input type="hidden" name="mid" value="<?php echo $__Context->mid ?>" />
            <input type="hidden" name="category" value="<?php echo $__Context->category ?>" />
            <span class="form-group search-select pull-left hidden-xs">
                <select name="search_target" class="form-control">
                    <?php if($__Context->search_option&&count($__Context->search_option))foreach($__Context->search_option as $__Context->key=>$__Context->val){ ?><option value="<?php echo $__Context->key ?>"<?php if($__Context->search_target==$__Context->key){ ?> selected="selected"<?php } ?>><?php echo $__Context->val ?></option><?php } ?>
                </select>
            </span>
            <span class="input-group searchfoot" >
                <input type="text" name="search_keyword" value="<?php echo htmlspecialchars($__Context->search_keyword) ?>" title="<?php echo $__Context->lang->cmd_search ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="submit" class="btn btn-default" onclick="xGetElementById('board_search').submit();return false;"><i class="fa fa-search"></i></button>
                </span>
            </span>
        </form><?php } ?>		
    </div><?php } ?>
</div>
<div class="text-center center-block">
	<?php if($__Context->document_list || $__Context->notice_list){ ?><ul class="pagination pagination-sm">
		<li ><a href="<?php echo getUrl('page','','document_srl','','division',$__Context->division,'last_division',$__Context->last_division) ?>" ><i class="fa fa-angle-left"></i></a></li> 
		<?php while($__Context->page_no=$__Context->page_navigation->getNextPage()){ ?><li<?php if($__Context->page==$__Context->page_no){ ?> class="active"<?php } ?>>
			<?php if($__Context->page==$__Context->page_no){ ?><a class="page-no"><?php echo $__Context->page_no ?></a><?php } ?>
			<?php if($__Context->page!=$__Context->page_no){ ?><a class="page-no" href="<?php echo getUrl('page',$__Context->page_no,'document_srl','','division',$__Context->division,'last_division',$__Context->last_division) ?>"><?php echo $__Context->page_no ?></a><?php } ?>
		</li><?php } ?>
		<li><a href="<?php echo getUrl('page',$__Context->page_navigation->last_page,'document_srl','','division',$__Context->division,'last_division',$__Context->last_division) ?>"><i class="fa fa-angle-right"></i></a></li>
	</ul><?php } ?>
</div>
<?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('modules/board/skins/KSO_v1','_footer.html') ?>
<?php } ?>
</div>
</div>
<?php } ?>
