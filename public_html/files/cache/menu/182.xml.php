<?php define('__XE__', true); require_once('/home1/enm0919/public_html/config/config.inc.php'); $oContext = Context::getInstance(); $oContext->init(); header("Content-Type: text/xml; charset=UTF-8"); header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); header("Cache-Control: no-store, no-cache, must-revalidate"); header("Cache-Control: post-check=0, pre-check=0", false); header("Pragma: no-cache"); $lang_type = Context::getLangType(); $is_logged = Context::get('is_logged'); $logged_info = Context::get('logged_info'); $site_srl = 0;$site_admin = false;if($site_srl) { $oModuleModel = getModel('module');$site_module_info = $oModuleModel->getSiteInfo($site_srl); if($site_module_info) Context::set('site_module_info',$site_module_info);else $site_module_info = Context::get('site_module_info');$grant = $oModuleModel->getGrant($site_module_info, $logged_info); if($grant->manager ==1) $site_admin = true;}if($is_logged) {if($logged_info->is_admin=="Y") $is_admin = true; else $is_admin = false; $group_srls = array_keys($logged_info->group_list); } else { $is_admin = false; $group_srls = array(); } $oContext->close(); ?><root><node node_srl="184" parent_srl="0" menu_name_key='popup' text="<?php if(true) { $_names = array("en"=>'popup',"ko"=>'popup',"jp"=>'popup',"zh-CN"=>'popup',"zh-TW"=>'popup',"fr"=>'popup',"de"=>'popup',"ru"=>'popup',"es"=>'popup',"tr"=>'popup',"vi"=>'popup',"mn"=>'popup',); print $_names[$lang_type]; }?>" url="<?php print(true?'popup':"")?>" href="<?php print(true?getSiteUrl('', '','mid','popup'):"")?>" is_shortcut='N' desc='' open_window='N' expand='N' normal_btn='' hover_btn='' active_btn='' link="<?php if(true) {?><?php print $_names[$lang_type]; ?><?php }?>" /><node node_srl="224" parent_srl="0" menu_name_key='쉐마교육' text="<?php if(true) { $_names = array("en"=>'popup',"ko"=>'popup',"jp"=>'popup',"zh-CN"=>'popup',"zh-TW"=>'popup',"fr"=>'popup',"de"=>'popup',"ru"=>'popup',"es"=>'popup',"tr"=>'popup',"vi"=>'popup',"mn"=>'popup',"en"=>'쉐마교육',"ko"=>'쉐마교육',"jp"=>'쉐마교육',"zh-CN"=>'쉐마교육',"zh-TW"=>'쉐마교육',"fr"=>'쉐마교육',"de"=>'쉐마교육',"ru"=>'쉐마교육',"es"=>'쉐마교육',"tr"=>'쉐마교육',"vi"=>'쉐마교육',"mn"=>'쉐마교육',); print $_names[$lang_type]; }?>" url="<?php print(true?'sub05_04':"")?>" href="<?php print(true?getSiteUrl('', '','mid','sub05_04'):"")?>" is_shortcut='N' desc='쉐마교육' open_window='N' expand='N' normal_btn='' hover_btn='' active_btn='' link="<?php if(true) {?><?php print $_names[$lang_type]; ?><?php }?>" /><node node_srl="219" parent_srl="0" menu_name_key='통통성경일독학교' text="<?php if(true) { $_names = array("en"=>'popup',"ko"=>'popup',"jp"=>'popup',"zh-CN"=>'popup',"zh-TW"=>'popup',"fr"=>'popup',"de"=>'popup',"ru"=>'popup',"es"=>'popup',"tr"=>'popup',"vi"=>'popup',"mn"=>'popup',"en"=>'쉐마교육',"ko"=>'쉐마교육',"jp"=>'쉐마교육',"zh-CN"=>'쉐마교육',"zh-TW"=>'쉐마교육',"fr"=>'쉐마교육',"de"=>'쉐마교육',"ru"=>'쉐마교육',"es"=>'쉐마교육',"tr"=>'쉐마교육',"vi"=>'쉐마교육',"mn"=>'쉐마교육',"en"=>'통통성경일독학교',"ko"=>'통통성경일독학교',"jp"=>'통통성경일독학교',"zh-CN"=>'통통성경일독학교',"zh-TW"=>'통통성경일독학교',"fr"=>'통통성경일독학교',"de"=>'통통성경일독학교',"ru"=>'통통성경일독학교',"es"=>'통통성경일독학교',"tr"=>'통통성경일독학교',"vi"=>'통통성경일독학교',"mn"=>'통통성경일독학교',); print $_names[$lang_type]; }?>" url="<?php print(true?'sub05_03':"")?>" href="<?php print(true?getSiteUrl('', '','mid','sub05_03'):"")?>" is_shortcut='N' desc='통통성경일독학교' open_window='N' expand='N' normal_btn='' hover_btn='' active_btn='' link="<?php if(true) {?><?php print $_names[$lang_type]; ?><?php }?>" /></root>