<?php if(!defined("__XE__"))exit;?><ul class="widgetZineA">
<?php $__Context->_idx=0 ?>
<?php if($__Context->widget_info->content_items&&count($__Context->widget_info->content_items))foreach($__Context->widget_info->content_items as $__Context->key => $__Context->item){ ?>
    <li<?php if($__Context->_idx >= $__Context->widget_info->list_count){ ?> style="display:none"<?php } ?>>
        <p class="thumbArea" style="width:<?php echo $__Context->widget_info->thumbnail_width ?>px;margin-right:-<?php echo $__Context->widget_info->thumbnail_width ?>px;">
            <a href="<?php echo $__Context->item->getLink() ?>" class="thumb" style="width:<?php echo $__Context->widget_info->thumbnail_width ?>px;height:<?php echo $__Context->widget_info->thumbnail_height ?>px">
                <?php if($__Context->item->getThumbnail()){ ?>
                    <img src="<?php echo $__Context->item->getThumbnail() ?>" style="width:<?php echo $__Context->widget_info->thumbnail_width ?>px;height:<?php echo $__Context->widget_info->thumbnail_height ?>px" />
                <?php }else{ ?>
                    <span class="imgNone"><?php echo $__Context->lang->none_image ?></span>
                <?php } ?>
                <?php if($__Context->widget_info->show_category=='Y' && $__Context->item->getCategory()){ ?>
                    <strong class="category"><?php echo $__Context->item->getCategory() ?></strong>
                <?php } ?>
            </a>
        </p>
    <?php for($__Context->j=0,$__Context->c=count($__Context->widget_info->option_view_arr);$__Context->j<$__Context->c;$__Context->j++){ ?>
        <?php if($__Context->widget_info->option_view_arr[$__Context->j]=='title'){ ?>
        <p class="titleArea" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
            <?php if($__Context->widget_info->show_browser_title=='Y' && $__Context->item->getBrowserTitle()){ ?>
                <a href="<?php echo getSiteUrl($__Context->item->domain, '', 'mid', $__Context->item->get('mid')) ?>"><strong class="board"><?php echo $__Context->item->getBrowserTitle() ?></strong></a>
            <?php } ?>
			
            <?php if($__Context->widget_info->show_content_title=='Y' && $__Context->item->getDocumentTitle()){ ?>
                <a href="<?php echo $__Context->item->getDocumentURL() ?>"><strong class="board"><?php echo $__Context->item->getDocumentTitle() ?></strong></a>
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
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
        </p>
        <?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='content'){ ?>
        <p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
            <?php echo $__Context->item->getContent() ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
        </p>
        <?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='nickname'){ ?>
        <p class="authorArea" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
                <a href="#" onclick="return false;" class="author member_<?php echo $__Context->item->getMemberSrl() ?>"><?php echo $__Context->item->getNickName() ?></a>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
        </p>
        <?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='voted_count'){ ?>
		<p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
			<?php if($__Context->item->getVotedCount()){ ?>+<?php echo $__Context->item->getVotedCount();
} ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
		</p>
        <?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='readed_count'){ ?>
		<p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
			<?php if($__Context->item->getReadedCount()){;
echo $__Context->item->getReadedCount();
}else{ ?>0<?php } ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
		</p>
		<?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='extravar'){ ?>
        <p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
            <?php echo $__Context->item->getExtraVar() ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
		</p>
		<?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='extravar2'){ ?>
        <p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
            <?php echo $__Context->item->getExtraVar2() ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
		</p>
		<?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='extravar3'){ ?>
        <p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
            <?php echo $__Context->item->getExtraVar3() ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
		</p>
		<?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='extravar4'){ ?>
        <p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
            <?php echo $__Context->item->getExtraVar4() ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
		</p>
		<?php }else if($__Context->widget_info->option_view_arr[$__Context->j]=='extravar5'){ ?>
        <p class="text" style="margin-left:<?php echo $__Context->widget_info->thumbnail_width+20 ?>px;">
            <?php echo $__Context->item->getExtraVar5() ?>
            <?php if($__Context->widget_info->option_view_arr[$__Context->j+1]=='regdate'){ ?>
                <span class="date"><?php echo $__Context->item->getRegdate("Y-m-d") ?></span> <span class="hour"><?php echo $__Context->item->getRegdate("H:i") ?></span>
            <?php } ?>
		</p>
		<?php } ?>
    <?php } ?>
    </li>
<?php $__Context->_idx++ ?>
<?php } ?>
</ul>
<?php if($__Context->widget_info->page_count > 1 && $__Context->widget_info->list_count<$__Context->_idx){ ?>
    <ul class="widgetNavigator">
        <li><button type="button" class="prev" title="<?php echo $__Context->lang->cmd_prev ?>" onclick="content_widget_prev(jQuery(this).parents('ul.widgetNavigator').prev('ul.widgetZineA'),<?php echo $__Context->widget_info->list_count ?>)"><span><?php echo $__Context->lang->cmd_prev ?></span></button></li>
        <li><button type="button" class="next" title="<?php echo $__Context->lang->cmd_next ?>" onclick="content_widget_next(jQuery(this).parents('ul.widgetNavigator').prev('ul.widgetZineA'),<?php echo $__Context->widget_info->list_count ?>)"><span><?php echo $__Context->lang->cmd_next ?></span></button></li>
    </ul>
<?php } ?>
