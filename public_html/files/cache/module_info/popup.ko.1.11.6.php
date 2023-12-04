<?php if(!defined("__XE__")) exit();
$info = new stdClass;
$info->default_index_act = '';
$info->setup_index_act='';
$info->simple_setup_index_act='';
$info->admin_index_act = 'dispPopupAdminContentList';
$info->permission = new stdClass;
$info->permission->dispPopupAdminContentList = 'manager';
$info->permission->dispPopupAdminInsertPopup = 'manager';
$info->permission->dispPopupAdminDeletePopup = 'manager';
$info->permission->procPopupAdminInsert = 'manager';
$info->permission->procPopupAdminDelete = 'manager';
$info->menu = new stdClass;
$info->menu->popup = new stdClass;
$info->menu->popup->title='팝업 관리';
$info->menu->popup->type='';
$info->action = new stdClass;
$info->menu->popup->index='dispPopupAdminContentList';
$info->menu->popup->acts[0]='dispPopupAdminContentList';
$info->action->dispPopupAdminContentList = new stdClass;
$info->action->dispPopupAdminContentList->type='view';
$info->action->dispPopupAdminContentList->grant='guest';
$info->action->dispPopupAdminContentList->standalone='true';
$info->action->dispPopupAdminContentList->ruleset='';
$info->action->dispPopupAdminContentList->method='';
$info->action->dispPopupAdminContentList->check_csrf='true';
$info->action->dispPopupAdminContentList->meta_noindex='false';
$info->menu->popup->acts[1]='dispPopupAdminInsertPopup';
$info->action->dispPopupAdminInsertPopup = new stdClass;
$info->action->dispPopupAdminInsertPopup->type='view';
$info->action->dispPopupAdminInsertPopup->grant='guest';
$info->action->dispPopupAdminInsertPopup->standalone='true';
$info->action->dispPopupAdminInsertPopup->ruleset='';
$info->action->dispPopupAdminInsertPopup->method='';
$info->action->dispPopupAdminInsertPopup->check_csrf='true';
$info->action->dispPopupAdminInsertPopup->meta_noindex='false';
$info->menu->popup->acts[2]='dispPopupAdminDeletePopup';
$info->action->dispPopupAdminDeletePopup = new stdClass;
$info->action->dispPopupAdminDeletePopup->type='view';
$info->action->dispPopupAdminDeletePopup->grant='guest';
$info->action->dispPopupAdminDeletePopup->standalone='true';
$info->action->dispPopupAdminDeletePopup->ruleset='';
$info->action->dispPopupAdminDeletePopup->method='';
$info->action->dispPopupAdminDeletePopup->check_csrf='true';
$info->action->dispPopupAdminDeletePopup->meta_noindex='false';
$info->action->procPopupAdminInsert = new stdClass;
$info->action->procPopupAdminInsert->type='controller';
$info->action->procPopupAdminInsert->grant='guest';
$info->action->procPopupAdminInsert->standalone='true';
$info->action->procPopupAdminInsert->ruleset='insert_popup_ruleset';
$info->action->procPopupAdminInsert->method='';
$info->action->procPopupAdminInsert->check_csrf='true';
$info->action->procPopupAdminInsert->meta_noindex='false';
$info->action->procPopupAdminDelete = new stdClass;
$info->action->procPopupAdminDelete->type='controller';
$info->action->procPopupAdminDelete->grant='guest';
$info->action->procPopupAdminDelete->standalone='true';
$info->action->procPopupAdminDelete->ruleset='delete_popup_ruleset';
$info->action->procPopupAdminDelete->method='';
$info->action->procPopupAdminDelete->check_csrf='true';
$info->action->procPopupAdminDelete->meta_noindex='false';
return $info;