<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("getDocumentList");
$query->setAction("select");
$query->setPriority("");
if(isset($args->module_srl)) {
${'module_srl41_argument'} = new ConditionArgument('module_srl', $args->module_srl, 'in');
${'module_srl41_argument'}->checkFilter('number');
${'module_srl41_argument'}->createConditionValue();
if(!${'module_srl41_argument'}->isValid()) return ${'module_srl41_argument'}->getErrorMessage();
} else
${'module_srl41_argument'} = NULL;if(${'module_srl41_argument'} !== null) ${'module_srl41_argument'}->setColumnType('number');
if(isset($args->exclude_module_srl)) {
${'exclude_module_srl42_argument'} = new ConditionArgument('exclude_module_srl', $args->exclude_module_srl, 'notin');
${'exclude_module_srl42_argument'}->checkFilter('number');
${'exclude_module_srl42_argument'}->createConditionValue();
if(!${'exclude_module_srl42_argument'}->isValid()) return ${'exclude_module_srl42_argument'}->getErrorMessage();
} else
${'exclude_module_srl42_argument'} = NULL;if(${'exclude_module_srl42_argument'} !== null) ${'exclude_module_srl42_argument'}->setColumnType('number');
if(isset($args->category_srl)) {
${'category_srl43_argument'} = new ConditionArgument('category_srl', $args->category_srl, 'in');
${'category_srl43_argument'}->createConditionValue();
if(!${'category_srl43_argument'}->isValid()) return ${'category_srl43_argument'}->getErrorMessage();
} else
${'category_srl43_argument'} = NULL;if(${'category_srl43_argument'} !== null) ${'category_srl43_argument'}->setColumnType('number');
if(isset($args->s_is_notice)) {
${'s_is_notice44_argument'} = new ConditionArgument('s_is_notice', $args->s_is_notice, 'equal');
${'s_is_notice44_argument'}->createConditionValue();
if(!${'s_is_notice44_argument'}->isValid()) return ${'s_is_notice44_argument'}->getErrorMessage();
} else
${'s_is_notice44_argument'} = NULL;if(${'s_is_notice44_argument'} !== null) ${'s_is_notice44_argument'}->setColumnType('char');
if(isset($args->member_srl)) {
${'member_srl45_argument'} = new ConditionArgument('member_srl', $args->member_srl, 'equal');
${'member_srl45_argument'}->checkFilter('number');
${'member_srl45_argument'}->createConditionValue();
if(!${'member_srl45_argument'}->isValid()) return ${'member_srl45_argument'}->getErrorMessage();
} else
${'member_srl45_argument'} = NULL;if(${'member_srl45_argument'} !== null) ${'member_srl45_argument'}->setColumnType('number');
if(isset($args->member_srls)) {
${'member_srls46_argument'} = new ConditionArgument('member_srls', $args->member_srls, 'in');
${'member_srls46_argument'}->checkFilter('number');
${'member_srls46_argument'}->createConditionValue();
if(!${'member_srls46_argument'}->isValid()) return ${'member_srls46_argument'}->getErrorMessage();
} else
${'member_srls46_argument'} = NULL;if(${'member_srls46_argument'} !== null) ${'member_srls46_argument'}->setColumnType('number');
if(isset($args->statusList)) {
${'statusList47_argument'} = new ConditionArgument('statusList', $args->statusList, 'in');
${'statusList47_argument'}->createConditionValue();
if(!${'statusList47_argument'}->isValid()) return ${'statusList47_argument'}->getErrorMessage();
} else
${'statusList47_argument'} = NULL;if(${'statusList47_argument'} !== null) ${'statusList47_argument'}->setColumnType('varchar');
if(isset($args->division)) {
${'division48_argument'} = new ConditionArgument('division', $args->division, 'more');
${'division48_argument'}->createConditionValue();
if(!${'division48_argument'}->isValid()) return ${'division48_argument'}->getErrorMessage();
} else
${'division48_argument'} = NULL;if(${'division48_argument'} !== null) ${'division48_argument'}->setColumnType('number');
if(isset($args->last_division)) {
${'last_division49_argument'} = new ConditionArgument('last_division', $args->last_division, 'below');
${'last_division49_argument'}->createConditionValue();
if(!${'last_division49_argument'}->isValid()) return ${'last_division49_argument'}->getErrorMessage();
} else
${'last_division49_argument'} = NULL;if(${'last_division49_argument'} !== null) ${'last_division49_argument'}->setColumnType('number');
if(isset($args->s_title)) {
${'s_title50_argument'} = new ConditionArgument('s_title', $args->s_title, 'like');
${'s_title50_argument'}->createConditionValue();
if(!${'s_title50_argument'}->isValid()) return ${'s_title50_argument'}->getErrorMessage();
} else
${'s_title50_argument'} = NULL;if(${'s_title50_argument'} !== null) ${'s_title50_argument'}->setColumnType('varchar');
if(isset($args->s_content)) {
${'s_content51_argument'} = new ConditionArgument('s_content', $args->s_content, 'like');
${'s_content51_argument'}->createConditionValue();
if(!${'s_content51_argument'}->isValid()) return ${'s_content51_argument'}->getErrorMessage();
} else
${'s_content51_argument'} = NULL;if(${'s_content51_argument'} !== null) ${'s_content51_argument'}->setColumnType('bigtext');
if(isset($args->s_user_name)) {
${'s_user_name52_argument'} = new ConditionArgument('s_user_name', $args->s_user_name, 'like');
${'s_user_name52_argument'}->createConditionValue();
if(!${'s_user_name52_argument'}->isValid()) return ${'s_user_name52_argument'}->getErrorMessage();
} else
${'s_user_name52_argument'} = NULL;if(${'s_user_name52_argument'} !== null) ${'s_user_name52_argument'}->setColumnType('varchar');
if(isset($args->s_user_id)) {
${'s_user_id53_argument'} = new ConditionArgument('s_user_id', $args->s_user_id, 'like');
${'s_user_id53_argument'}->createConditionValue();
if(!${'s_user_id53_argument'}->isValid()) return ${'s_user_id53_argument'}->getErrorMessage();
} else
${'s_user_id53_argument'} = NULL;if(${'s_user_id53_argument'} !== null) ${'s_user_id53_argument'}->setColumnType('varchar');
if(isset($args->s_nick_name)) {
${'s_nick_name54_argument'} = new ConditionArgument('s_nick_name', $args->s_nick_name, 'like');
${'s_nick_name54_argument'}->createConditionValue();
if(!${'s_nick_name54_argument'}->isValid()) return ${'s_nick_name54_argument'}->getErrorMessage();
} else
${'s_nick_name54_argument'} = NULL;if(${'s_nick_name54_argument'} !== null) ${'s_nick_name54_argument'}->setColumnType('varchar');
if(isset($args->s_email_address)) {
${'s_email_address55_argument'} = new ConditionArgument('s_email_address', $args->s_email_address, 'like');
${'s_email_address55_argument'}->createConditionValue();
if(!${'s_email_address55_argument'}->isValid()) return ${'s_email_address55_argument'}->getErrorMessage();
} else
${'s_email_address55_argument'} = NULL;if(${'s_email_address55_argument'} !== null) ${'s_email_address55_argument'}->setColumnType('varchar');
if(isset($args->s_homepage)) {
${'s_homepage56_argument'} = new ConditionArgument('s_homepage', $args->s_homepage, 'like');
${'s_homepage56_argument'}->createConditionValue();
if(!${'s_homepage56_argument'}->isValid()) return ${'s_homepage56_argument'}->getErrorMessage();
} else
${'s_homepage56_argument'} = NULL;if(${'s_homepage56_argument'} !== null) ${'s_homepage56_argument'}->setColumnType('varchar');
if(isset($args->s_tags)) {
${'s_tags57_argument'} = new ConditionArgument('s_tags', $args->s_tags, 'like');
${'s_tags57_argument'}->createConditionValue();
if(!${'s_tags57_argument'}->isValid()) return ${'s_tags57_argument'}->getErrorMessage();
} else
${'s_tags57_argument'} = NULL;if(${'s_tags57_argument'} !== null) ${'s_tags57_argument'}->setColumnType('text');
if(isset($args->s_member_srl)) {
${'s_member_srl58_argument'} = new ConditionArgument('s_member_srl', $args->s_member_srl, 'equal');
${'s_member_srl58_argument'}->createConditionValue();
if(!${'s_member_srl58_argument'}->isValid()) return ${'s_member_srl58_argument'}->getErrorMessage();
} else
${'s_member_srl58_argument'} = NULL;if(${'s_member_srl58_argument'} !== null) ${'s_member_srl58_argument'}->setColumnType('number');
if(isset($args->s_member_srls)) {
${'s_member_srls59_argument'} = new ConditionArgument('s_member_srls', $args->s_member_srls, 'in');
${'s_member_srls59_argument'}->createConditionValue();
if(!${'s_member_srls59_argument'}->isValid()) return ${'s_member_srls59_argument'}->getErrorMessage();
} else
${'s_member_srls59_argument'} = NULL;if(${'s_member_srls59_argument'} !== null) ${'s_member_srls59_argument'}->setColumnType('number');
if(isset($args->s_readed_count)) {
${'s_readed_count60_argument'} = new ConditionArgument('s_readed_count', $args->s_readed_count, 'more');
${'s_readed_count60_argument'}->createConditionValue();
if(!${'s_readed_count60_argument'}->isValid()) return ${'s_readed_count60_argument'}->getErrorMessage();
} else
${'s_readed_count60_argument'} = NULL;if(${'s_readed_count60_argument'} !== null) ${'s_readed_count60_argument'}->setColumnType('number');
if(isset($args->s_voted_count)) {
${'s_voted_count61_argument'} = new ConditionArgument('s_voted_count', $args->s_voted_count, 'more');
${'s_voted_count61_argument'}->createConditionValue();
if(!${'s_voted_count61_argument'}->isValid()) return ${'s_voted_count61_argument'}->getErrorMessage();
} else
${'s_voted_count61_argument'} = NULL;if(${'s_voted_count61_argument'} !== null) ${'s_voted_count61_argument'}->setColumnType('number');
if(isset($args->s_blamed_count)) {
${'s_blamed_count62_argument'} = new ConditionArgument('s_blamed_count', $args->s_blamed_count, 'less');
${'s_blamed_count62_argument'}->createConditionValue();
if(!${'s_blamed_count62_argument'}->isValid()) return ${'s_blamed_count62_argument'}->getErrorMessage();
} else
${'s_blamed_count62_argument'} = NULL;if(${'s_blamed_count62_argument'} !== null) ${'s_blamed_count62_argument'}->setColumnType('number');
if(isset($args->s_comment_count)) {
${'s_comment_count63_argument'} = new ConditionArgument('s_comment_count', $args->s_comment_count, 'more');
${'s_comment_count63_argument'}->createConditionValue();
if(!${'s_comment_count63_argument'}->isValid()) return ${'s_comment_count63_argument'}->getErrorMessage();
} else
${'s_comment_count63_argument'} = NULL;if(${'s_comment_count63_argument'} !== null) ${'s_comment_count63_argument'}->setColumnType('number');
if(isset($args->s_trackback_count)) {
${'s_trackback_count64_argument'} = new ConditionArgument('s_trackback_count', $args->s_trackback_count, 'more');
${'s_trackback_count64_argument'}->createConditionValue();
if(!${'s_trackback_count64_argument'}->isValid()) return ${'s_trackback_count64_argument'}->getErrorMessage();
} else
${'s_trackback_count64_argument'} = NULL;if(${'s_trackback_count64_argument'} !== null) ${'s_trackback_count64_argument'}->setColumnType('number');
if(isset($args->s_uploaded_count)) {
${'s_uploaded_count65_argument'} = new ConditionArgument('s_uploaded_count', $args->s_uploaded_count, 'more');
${'s_uploaded_count65_argument'}->createConditionValue();
if(!${'s_uploaded_count65_argument'}->isValid()) return ${'s_uploaded_count65_argument'}->getErrorMessage();
} else
${'s_uploaded_count65_argument'} = NULL;if(${'s_uploaded_count65_argument'} !== null) ${'s_uploaded_count65_argument'}->setColumnType('number');
if(isset($args->s_regdate)) {
${'s_regdate66_argument'} = new ConditionArgument('s_regdate', $args->s_regdate, 'like_prefix');
${'s_regdate66_argument'}->createConditionValue();
if(!${'s_regdate66_argument'}->isValid()) return ${'s_regdate66_argument'}->getErrorMessage();
} else
${'s_regdate66_argument'} = NULL;if(${'s_regdate66_argument'} !== null) ${'s_regdate66_argument'}->setColumnType('date');
if(isset($args->s_last_update)) {
${'s_last_update67_argument'} = new ConditionArgument('s_last_update', $args->s_last_update, 'like_prefix');
${'s_last_update67_argument'}->createConditionValue();
if(!${'s_last_update67_argument'}->isValid()) return ${'s_last_update67_argument'}->getErrorMessage();
} else
${'s_last_update67_argument'} = NULL;if(${'s_last_update67_argument'} !== null) ${'s_last_update67_argument'}->setColumnType('date');
if(isset($args->s_ipaddress)) {
${'s_ipaddress68_argument'} = new ConditionArgument('s_ipaddress', $args->s_ipaddress, 'like_prefix');
${'s_ipaddress68_argument'}->createConditionValue();
if(!${'s_ipaddress68_argument'}->isValid()) return ${'s_ipaddress68_argument'}->getErrorMessage();
} else
${'s_ipaddress68_argument'} = NULL;if(${'s_ipaddress68_argument'} !== null) ${'s_ipaddress68_argument'}->setColumnType('varchar');
if(isset($args->start_date)) {
${'start_date69_argument'} = new ConditionArgument('start_date', $args->start_date, 'more');
${'start_date69_argument'}->createConditionValue();
if(!${'start_date69_argument'}->isValid()) return ${'start_date69_argument'}->getErrorMessage();
} else
${'start_date69_argument'} = NULL;if(${'start_date69_argument'} !== null) ${'start_date69_argument'}->setColumnType('date');
if(isset($args->end_date)) {
${'end_date70_argument'} = new ConditionArgument('end_date', $args->end_date, 'less');
${'end_date70_argument'}->createConditionValue();
if(!${'end_date70_argument'}->isValid()) return ${'end_date70_argument'}->getErrorMessage();
} else
${'end_date70_argument'} = NULL;if(${'end_date70_argument'} !== null) ${'end_date70_argument'}->setColumnType('date');

${'page73_argument'} = new Argument('page', $args->{'page'});
${'page73_argument'}->ensureDefaultValue('1');
if(!${'page73_argument'}->isValid()) return ${'page73_argument'}->getErrorMessage();

${'page_count74_argument'} = new Argument('page_count', $args->{'page_count'});
${'page_count74_argument'}->ensureDefaultValue('10');
if(!${'page_count74_argument'}->isValid()) return ${'page_count74_argument'}->getErrorMessage();

${'list_count75_argument'} = new Argument('list_count', $args->{'list_count'});
${'list_count75_argument'}->ensureDefaultValue('20');
if(!${'list_count75_argument'}->isValid()) return ${'list_count75_argument'}->getErrorMessage();

${'sort_index71_argument'} = new Argument('sort_index', $args->{'sort_index'});
${'sort_index71_argument'}->ensureDefaultValue('list_order');
if(!${'sort_index71_argument'}->isValid()) return ${'sort_index71_argument'}->getErrorMessage();

${'order_type72_argument'} = new SortArgument('order_type72', $args->order_type);
${'order_type72_argument'}->ensureDefaultValue('asc');
if(!${'order_type72_argument'}->isValid()) return ${'order_type72_argument'}->getErrorMessage();

$query->setColumns(array(
new StarExpression()
));
$query->setTables(array(
new Table('`xe_documents`', '`documents`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`module_srl`',$module_srl41_argument,"in")
,new ConditionWithArgument('`module_srl`',$exclude_module_srl42_argument,"notin", 'and')
,new ConditionWithArgument('`category_srl`',$category_srl43_argument,"in", 'and')
,new ConditionWithArgument('`is_notice`',$s_is_notice44_argument,"equal", 'and')
,new ConditionWithArgument('`member_srl`',$member_srl45_argument,"equal", 'and')
,new ConditionWithArgument('`member_srl`',$member_srls46_argument,"in", 'and')
,new ConditionWithArgument('`status`',$statusList47_argument,"in", 'and')))
,new ConditionGroup(array(
new ConditionWithArgument('`list_order`',$division48_argument,"more", 'and')
,new ConditionWithArgument('`list_order`',$last_division49_argument,"below", 'and')),'and')
,new ConditionGroup(array(
new ConditionWithArgument('`title`',$s_title50_argument,"like")
,new ConditionWithArgument('`content`',$s_content51_argument,"like", 'or')
,new ConditionWithArgument('`user_name`',$s_user_name52_argument,"like", 'or')
,new ConditionWithArgument('`user_id`',$s_user_id53_argument,"like", 'or')
,new ConditionWithArgument('`nick_name`',$s_nick_name54_argument,"like", 'or')
,new ConditionWithArgument('`email_address`',$s_email_address55_argument,"like", 'or')
,new ConditionWithArgument('`homepage`',$s_homepage56_argument,"like", 'or')
,new ConditionWithArgument('`tags`',$s_tags57_argument,"like", 'or')
,new ConditionWithArgument('`member_srl`',$s_member_srl58_argument,"equal", 'or')
,new ConditionWithArgument('`member_srl`',$s_member_srls59_argument,"in", 'or')
,new ConditionWithArgument('`readed_count`',$s_readed_count60_argument,"more", 'or')
,new ConditionWithArgument('`voted_count`',$s_voted_count61_argument,"more", 'or')
,new ConditionWithArgument('`blamed_count`',$s_blamed_count62_argument,"less", 'or')
,new ConditionWithArgument('`comment_count`',$s_comment_count63_argument,"more", 'or')
,new ConditionWithArgument('`trackback_count`',$s_trackback_count64_argument,"more", 'or')
,new ConditionWithArgument('`uploaded_count`',$s_uploaded_count65_argument,"more", 'or')
,new ConditionWithArgument('`regdate`',$s_regdate66_argument,"like_prefix", 'or')
,new ConditionWithArgument('`last_update`',$s_last_update67_argument,"like_prefix", 'or')
,new ConditionWithArgument('`ipaddress`',$s_ipaddress68_argument,"like_prefix", 'or')),'and')
,new ConditionGroup(array(
new ConditionWithArgument('`last_update`',$start_date69_argument,"more", 'and')
,new ConditionWithArgument('`last_update`',$end_date70_argument,"less", 'and')),'and')
));
$query->setGroups(array());
$query->setOrder(array(
new OrderByColumn(${'sort_index71_argument'}, $order_type72_argument)
));
$query->setLimit(new Limit(${'list_count75_argument'}, ${'page73_argument'}, ${'page_count74_argument'}));
return $query; ?>