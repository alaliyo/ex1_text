<?php if(!defined("__XE__"))exit;?><!--#Meta:widgets/contentextended/skins/default/js/content_widget.js--><?php $__tmp=array('widgets/contentextended/skins/default/js/content_widget.js','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<?php if($__Context->colorset == "black" || $__Context->colorset == "white"){ ?>
    <!--#Meta:widgets/contentextended/skins/default/css/widget.css--><?php $__tmp=array('widgets/contentextended/skins/default/css/widget.css','','','');Context::loadFile($__tmp);unset($__tmp); ?>
<?php } ?>
<div class="widgetContainer<?php if($__Context->colorset=="black"){ ?> black<?php } ?>">
    <?php if($__Context->widget_info->tab_type  == "tab_left"){ ?>
        <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('widgets/contentextended/skins/default','_tab_left.html') ?>
    <?php }elseif($__Context->widget_info->tab_type == "tab_top"){ ?>
        <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('widgets/contentextended/skins/default','_tab_top.html') ?>
    <?php }else{ ?>
        <?php $__tpl=TemplateHandler::getInstance();echo $__tpl->compile('widgets/contentextended/skins/default','_tab_none.html') ?>
    <?php } ?>
</div>
