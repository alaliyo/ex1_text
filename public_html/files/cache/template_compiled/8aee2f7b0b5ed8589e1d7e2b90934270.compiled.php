<?php if(!defined("__XE__"))exit;?>
<?php if($__Context->widget_info->markup_type=="list"){ ?>
    <ul class="widgetA">
    <?php $__Context->_idx=0 ?>
    <?php if($__Context->widget_info->content_items&&count($__Context->widget_info->content_items))foreach($__Context->widget_info->content_items as $__Context->key => $__Context->item){ ?>
        <li<?php if($__Context->widget_info->show_always_new == 'N' && $__Context->_idx >= $__Context->widget_info->list_count){ ?> style="display:none"<?php } ?>>
            <?php if($__Context->widget_info->option_view_arr&&count($__Context->widget_info->option_view_arr))foreach($__Context->widget_info->option_view_arr as $__Context->k => $__Context->v){ ?>
                <?php if($__Context->v=='title'){ ?>
                    <?php if($__Context->widget_info->show_browser_title=='Y' && $__Context->item->getBrowserTitle()){ ?>
                        <a href="<?php if($__Context->item->contents_link){;
echo $__Context->item->contents_link;
}else{;
echo getSiteUrl($__Context->item->domain, '', 'mid', $__Context->item->get('mid'));
} ?>" class="board"><strong><?php echo $__Context->item->getBrowserTitle() ?></strong></a>
                    <?php } ?>
					<?php if($__Context->widget_info->show_content_title=='Y' && $__Context->item->getDocumentTitle()){ ?>
						<a href="<?php echo $__Context->item->getDocumentURL() ?>"><strong><?php echo $__Context->item->getDocumentTitle() ?></strong></a>
					<?php } ?>
                    <?php if($__Context->widget_info->show_category=='Y' && $__Context->item->get('category_srl') ){ ?>
                        <a href="<?php echo getSiteUrl($__Context->item->domain,'','mid',$__Context->item->get('mid'),'category',$__Context->item->get('category_srl')) ?>"><strong class="category"><?php echo $__Context->item->getCategory() ?></strong></a>
                    <?php } ?>
                    <a href="<?php echo $__Context->item->getLink() ?>" class="title"><?php echo $__Context->item->getTitle($__Context->widget_info->subject_cut_size) ?></a>
                    <?php if($__Context->widget_info->show_comment_count=='Y' && $__Context->item->getCommentCount()){ ?>
                        <sup class="replyNum" title="Replies"><a href="<?php echo $__Context->item->getLink() ?>#comment"><?php echo $__Context->item->getCommentCount() ?></a></sup>
                    <?php } ?>
                    <?php if($__Context->widget_info->show_trackback_count=='Y' && $__Context->item->getTrackbackCount()){ ?>
                        <sup class="trackbackNum" title="Trackbacks"><a href="<?php echo $__Context->item->getLink() ?>#trackback"><?php echo $__Context->item->getTrackbackCount() ?></a></sup>
                    <?php } ?>
                    <?php if($__Context->widget_info->show_icon=='Y'){ ?>
                        <span class="icon"><?php echo $__Context->item->printExtraImages() ?></span>
                    <?php } ?>
                <?php }else if($__Context->v=='voted_count'){ ?>
					<?php if($__Context->item->getVotedCount()){ ?>+<?php echo $__Context->item->getVotedCount();
} ?>
                <?php }else if($__Context->v=='readed_count'){ ?>
					<?php if($__Context->item->getReadedCount()){;
echo $__Context->item->getReadedCount();
}else{ ?>0<?php } ?>
                <?php }else if($__Context->v=='nickname'){ ?>
                    <a <?php if($__Context->item->getMemberSrl()){ ?>href="#" onclick="return false;" class="author member_<?php echo $__Context->item->getMemberSrl() ?>"<?php }elseif($__Context->item->getAuthorSite()){ ?>href="<?php echo $__Context->item->getAuthorSite() ?>" onclick="window.open(this.href); return false;" class="author member"<?php }else{ ?>href="#" onclick="return false;" class="author member"<?php } ?> ><?php echo $__Context->item->getNickName() ?></a>
                <?php }else if($__Context->v=='regdate'){ ?>
                    <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
				<?php }else if($__Context->v=='extravar'){ ?>
					<?php echo $__Context->item->getExtraVar() ?>
				<?php }else if($__Context->v=='extravar2'){ ?>
					<?php echo $__Context->item->getExtraVar2() ?>
				<?php }else if($__Context->v=='extravar3'){ ?>
					<?php echo $__Context->item->getExtraVar3() ?>
				<?php }else if($__Context->v=='extravar4'){ ?>
					<?php echo $__Context->item->getExtraVar4() ?>
				<?php }else if($__Context->v=='extravar5'){ ?>
					<?php echo $__Context->item->getExtraVar5() ?>
                <?php } ?>
            <?php } ?>
        </li>
    <?php $__Context->_idx++ ?>
    <?php } ?>
    </ul>
    <?php if($__Context->widget_info->page_count > 1 && $__Context->widget_info->list_count<$__Context->_idx){ ?>
    <ul class="widgetNavigator">
        <li><button type="button" class="prev" title="<?php echo $__Context->lang->cmd_prev ?>" onclick="content_widget_prev(jQuery(this).parents('ul.widgetNavigator').prev('ul.widgetA'),<?php echo $__Context->widget_info->list_count ?>)"><span><?php echo $__Context->lang->cmd_prev ?></span></button></li>
        <li><button type="button" class="next" title="<?php echo $__Context->lang->cmd_next ?>" onclick="content_widget_next(jQuery(this).parents('ul.widgetNavigator').prev('ul.widgetA'),<?php echo $__Context->widget_info->list_count ?>)"><span><?php echo $__Context->lang->cmd_next ?></span></button></li>
    </ul>
    <?php } ?>
<?php }else{ ?>
    <table class="widgetTableA" border="1" cellspacing="0">
        <tbody>
    <?php $__Context->_idx=0 ?>
    <?php if($__Context->widget_info->content_items&&count($__Context->widget_info->content_items))foreach($__Context->widget_info->content_items as $__Context->key => $__Context->item){ ?>
        <tr<?php if($__Context->_idx >= $__Context->widget_info->list_count && $__Context->widget_info->show_always_new == 'N'){ ?> style="display:none"<?php } ?>>
    <?php if($__Context->widget_info->option_view_arr&&count($__Context->widget_info->option_view_arr))foreach($__Context->widget_info->option_view_arr as $__Context->k => $__Context->v){ ?>
    <?php if($__Context->v=='title'){ ?>
        <td class="title">
            <?php if($__Context->widget_info->show_browser_title=='Y' && $__Context->item->getBrowserTitle()){ ?>
                <a href="<?php if($__Context->item->contents_link){;
echo $__Context->item->contents_link;
}else{;
echo getSiteUrl($__Context->item->domain, '', 'mid', $__Context->item->get('mid'));
} ?>"><strong class="board"><?php echo $__Context->item->getBrowserTitle() ?></strong></a>
            <?php } ?>
            <?php if($__Context->widget_info->show_content_title=='Y' && $__Context->item->getDocumentTitle()){ ?>
                <a href="<?php echo $__Context->item->getDocumentURL() ?>"><strong class="board"><?php echo $__Context->item->getDocumentTitle() ?></strong></a>
            <?php } ?>
            <?php if($__Context->widget_info->show_category=='Y' && $__Context->item->get('category_srl') ){ ?>
                <a href="<?php echo getSiteUrl($__Context->item->domain,'','mid',$__Context->item->get('mid'),'category',$__Context->item->get('category_srl')) ?>"><strong class="category"><?php echo $__Context->item->getCategory() ?></strong></a>
            <?php } ?>
            <a href="<?php echo $__Context->item->getLink() ?>"><?php echo $__Context->item->getTitle($__Context->widget_info->subject_cut_size) ?></a>
            <?php if($__Context->widget_info->show_comment_count=='Y' && $__Context->item->getCommentCount()){ ?>
                <sup class="replyNum" title="Replies"><a href="<?php echo $__Context->item->getLink() ?>#comment"><?php echo $__Context->item->getCommentCount() ?></a></sup>
            <?php } ?>
            <?php if($__Context->widget_info->show_trackback_count=='Y' && $__Context->item->getTrackbackCount()){ ?>
                <sup class="trackbackNum" title="Trackbacks"><a href="<?php echo $__Context->item->getLink() ?>#trackback"><?php echo $__Context->item->getTrackbackCount() ?></a></sup>
            <?php } ?>
            <?php if($__Context->widget_info->show_icon=='Y'){ ?>
                <span class="icon"><?php echo $__Context->item->printExtraImages() ?></span>
            <?php } ?>
        </td>
    <?php }else if($__Context->v=='nickname'){ ?>
        <td><a <?php if($__Context->item->getMemberSrl()){ ?>href="#" onclick="return false;" class="author member_<?php echo $__Context->item->getMemberSrl() ?>"<?php }elseif($__Context->item->getAuthorSite()){ ?>href="<?php echo $__Context->item->getAuthorSite() ?>" onclick="window.open(this.href); return false;" class="author member"<?php }else{ ?>href="#" onclick="return false;" class="author member"<?php } ?> ><?php echo $__Context->item->getNickName() ?></a></td>
    <?php }else if($__Context->v=='regdate'){ ?>
        <td class="time"><span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span></td>
    <?php }else if($__Context->v=='voted_count'){ ?>
		<td><?php if($__Context->item->getVotedCount()){ ?>+<?php echo $__Context->item->getVotedCount();
} ?></td>
    <?php }else if($__Context->v=='readed_count'){ ?>
		<td><?php if($__Context->item->getReadedCount()){;
echo $__Context->item->getReadedCount();
}else{ ?>0<?php } ?></td>
	<?php }else if($__Context->v=='extravar'){ ?>
		<td><?php echo $__Context->item->getExtraVar() ?></td>
	<?php }else if($__Context->v=='extravar2'){ ?>
		<td><?php echo $__Context->item->getExtraVar2() ?></td>
	<?php }else if($__Context->v=='extravar3'){ ?>
		<td><?php echo $__Context->item->getExtraVar3() ?></td>
	<?php }else if($__Context->v=='extravar4'){ ?>
		<td><?php echo $__Context->item->getExtraVar4() ?></td>
	<?php }else if($__Context->v=='extravar5'){ ?>
		<td><?php echo $__Context->item->getExtraVar5() ?></td>
    <?php } ?>
    <?php } ?>
        </tr>
    <?php $__Context->_idx++ ?>
    <?php } ?>
        </tbody>
    </table>
    <?php if($__Context->widget_info->page_count > 1 && $__Context->widget_info->list_count<$__Context->_idx){ ?>
    <ul class="widgetNavigator">
        <li><button type="button" class="prev" title="<?php echo $__Context->lang->cmd_prev ?>" onclick="content_widget_prev(jQuery(this).parents('ul.widgetNavigator').prev('table.widgetTableA'),<?php echo $__Context->widget_info->list_count ?>)"><span><?php echo $__Context->lang->cmd_prev ?></span></button></li>
        <li><button type="button" class="next" title="<?php echo $__Context->lang->cmd_next ?>" onclick="content_widget_next(jQuery(this).parents('ul.widgetNavigator').prev('table.widgetTableA'),<?php echo $__Context->widget_info->list_count ?>)"><span><?php echo $__Context->lang->cmd_next ?></span></button></li>
    </ul>
    <?php } ?>
<?php } ?>
