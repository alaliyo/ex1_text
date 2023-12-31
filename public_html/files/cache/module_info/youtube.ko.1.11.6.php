<?php if(!defined("__XE__")) exit();
$info = new stdClass;
$info->default_index_act = 'dispYoutubeBrowse';
$info->setup_index_act='';
$info->simple_setup_index_act='getYoutubeAdminSimpleSetup';
$info->admin_index_act = 'dispYoutubeAdminBrowse';
$info->grant = new stdClass;
$info->grant->browse = new stdClass;
$info->grant->browse->title='목록';
$info->grant->browse->default='guest';
$info->grant->peruse = new stdClass;
$info->grant->peruse->title='보기';
$info->grant->peruse->default='guest';
$info->permission = new stdClass;
$info->permission->getYoutubeAdminSimpleSetup = 'manager';
$info->permission->dispYoutubeAdminBrowse = 'manager';
$info->permission->dispYoutubeAdminUpdate = 'manager';
$info->permission->dispYoutubeAdminUpdateAuthority = 'manager';
$info->permission->dispYoutubeAdminDelete = 'manager';
$info->permission->procYoutubeAdminUpdateSimpleSetup = 'manager';
$info->menu = new stdClass;
$info->menu->youtube = new stdClass;
$info->menu->youtube->title='유튜브';
$info->menu->youtube->type='all';
$info->action = new stdClass;
$info->action->getYoutubeAdminSimpleSetup = new stdClass;
$info->action->getYoutubeAdminSimpleSetup->type='model';
$info->action->getYoutubeAdminSimpleSetup->grant='guest';
$info->action->getYoutubeAdminSimpleSetup->standalone='true';
$info->action->getYoutubeAdminSimpleSetup->ruleset='';
$info->action->getYoutubeAdminSimpleSetup->method='';
$info->action->getYoutubeAdminSimpleSetup->check_csrf='true';
$info->action->getYoutubeAdminSimpleSetup->meta_noindex='false';
$info->action->dispYoutubeAdminBrowse = new stdClass;
$info->action->dispYoutubeAdminBrowse->type='view';
$info->action->dispYoutubeAdminBrowse->grant='guest';
$info->action->dispYoutubeAdminBrowse->standalone='true';
$info->action->dispYoutubeAdminBrowse->ruleset='';
$info->action->dispYoutubeAdminBrowse->method='';
$info->action->dispYoutubeAdminBrowse->check_csrf='true';
$info->action->dispYoutubeAdminBrowse->meta_noindex='false';
$info->action->dispYoutubeAdminUpdate = new stdClass;
$info->action->dispYoutubeAdminUpdate->type='view';
$info->action->dispYoutubeAdminUpdate->grant='guest';
$info->action->dispYoutubeAdminUpdate->standalone='true';
$info->action->dispYoutubeAdminUpdate->ruleset='';
$info->action->dispYoutubeAdminUpdate->method='';
$info->action->dispYoutubeAdminUpdate->check_csrf='true';
$info->action->dispYoutubeAdminUpdate->meta_noindex='false';
$info->action->dispYoutubeAdminUpdateAuthority = new stdClass;
$info->action->dispYoutubeAdminUpdateAuthority->type='view';
$info->action->dispYoutubeAdminUpdateAuthority->grant='guest';
$info->action->dispYoutubeAdminUpdateAuthority->standalone='true';
$info->action->dispYoutubeAdminUpdateAuthority->ruleset='';
$info->action->dispYoutubeAdminUpdateAuthority->method='';
$info->action->dispYoutubeAdminUpdateAuthority->check_csrf='true';
$info->action->dispYoutubeAdminUpdateAuthority->meta_noindex='false';
$info->action->dispYoutubeAdminDelete = new stdClass;
$info->action->dispYoutubeAdminDelete->type='view';
$info->action->dispYoutubeAdminDelete->grant='guest';
$info->action->dispYoutubeAdminDelete->standalone='true';
$info->action->dispYoutubeAdminDelete->ruleset='';
$info->action->dispYoutubeAdminDelete->method='';
$info->action->dispYoutubeAdminDelete->check_csrf='true';
$info->action->dispYoutubeAdminDelete->meta_noindex='false';
$info->action->procYoutubeAdminUpdate = new stdClass;
$info->action->procYoutubeAdminUpdate->type='controller';
$info->action->procYoutubeAdminUpdate->grant='guest';
$info->action->procYoutubeAdminUpdate->standalone='true';
$info->action->procYoutubeAdminUpdate->ruleset='';
$info->action->procYoutubeAdminUpdate->method='';
$info->action->procYoutubeAdminUpdate->check_csrf='true';
$info->action->procYoutubeAdminUpdate->meta_noindex='false';
$info->action->procYoutubeAdminDelete = new stdClass;
$info->action->procYoutubeAdminDelete->type='controller';
$info->action->procYoutubeAdminDelete->grant='guest';
$info->action->procYoutubeAdminDelete->standalone='true';
$info->action->procYoutubeAdminDelete->ruleset='';
$info->action->procYoutubeAdminDelete->method='';
$info->action->procYoutubeAdminDelete->check_csrf='true';
$info->action->procYoutubeAdminDelete->meta_noindex='false';
$info->action->procYoutubeAdminUpdateSimpleSetup = new stdClass;
$info->action->procYoutubeAdminUpdateSimpleSetup->type='controller';
$info->action->procYoutubeAdminUpdateSimpleSetup->grant='guest';
$info->action->procYoutubeAdminUpdateSimpleSetup->standalone='true';
$info->action->procYoutubeAdminUpdateSimpleSetup->ruleset='';
$info->action->procYoutubeAdminUpdateSimpleSetup->method='';
$info->action->procYoutubeAdminUpdateSimpleSetup->check_csrf='true';
$info->action->procYoutubeAdminUpdateSimpleSetup->meta_noindex='false';
$info->action->dispYoutubeBrowse = new stdClass;
$info->action->dispYoutubeBrowse->type='view';
$info->action->dispYoutubeBrowse->grant='guest';
$info->action->dispYoutubeBrowse->standalone='true';
$info->action->dispYoutubeBrowse->ruleset='';
$info->action->dispYoutubeBrowse->method='';
$info->action->dispYoutubeBrowse->check_csrf='true';
$info->action->dispYoutubeBrowse->meta_noindex='false';
$info->action->procYoutubeUpdateCache = new stdClass;
$info->action->procYoutubeUpdateCache->type='controller';
$info->action->procYoutubeUpdateCache->grant='guest';
$info->action->procYoutubeUpdateCache->standalone='true';
$info->action->procYoutubeUpdateCache->ruleset='';
$info->action->procYoutubeUpdateCache->method='';
$info->action->procYoutubeUpdateCache->check_csrf='true';
$info->action->procYoutubeUpdateCache->meta_noindex='false';
return $info;