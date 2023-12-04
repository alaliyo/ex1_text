<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("getNewestDocuments");
$query->setAction("select");
$query->setPriority("");

${'module_srl6_argument'} = new ConditionArgument('module_srl', $args->module_srl, 'in');
${'module_srl6_argument'}->checkFilter('number');
${'module_srl6_argument'}->checkNotNull();
${'module_srl6_argument'}->createConditionValue();
if(!${'module_srl6_argument'}->isValid()) return ${'module_srl6_argument'}->getErrorMessage();
if(${'module_srl6_argument'} !== null) ${'module_srl6_argument'}->setColumnType('number');
if(isset($args->category_srl)) {
${'category_srl7_argument'} = new ConditionArgument('category_srl', $args->category_srl, 'equal');
${'category_srl7_argument'}->createConditionValue();
if(!${'category_srl7_argument'}->isValid()) return ${'category_srl7_argument'}->getErrorMessage();
} else
${'category_srl7_argument'} = NULL;if(${'category_srl7_argument'} !== null) ${'category_srl7_argument'}->setColumnType('number');
if(isset($args->statusList)) {
${'statusList8_argument'} = new ConditionArgument('statusList', $args->statusList, 'in');
${'statusList8_argument'}->createConditionValue();
if(!${'statusList8_argument'}->isValid()) return ${'statusList8_argument'}->getErrorMessage();
} else
${'statusList8_argument'} = NULL;if(${'statusList8_argument'} !== null) ${'statusList8_argument'}->setColumnType('varchar');
if(isset($args->duration_article)) {
${'duration_article9_argument'} = new ConditionArgument('duration_article', $args->duration_article, 'more');
${'duration_article9_argument'}->createConditionValue();
if(!${'duration_article9_argument'}->isValid()) return ${'duration_article9_argument'}->getErrorMessage();
} else
${'duration_article9_argument'} = NULL;if(${'duration_article9_argument'} !== null) ${'duration_article9_argument'}->setColumnType('date');

${'page12_argument'} = new Argument('page', $args->{'page'});
${'page12_argument'}->ensureDefaultValue('1');
if(!${'page12_argument'}->isValid()) return ${'page12_argument'}->getErrorMessage();

${'page_count13_argument'} = new Argument('page_count', $args->{'page_count'});
${'page_count13_argument'}->ensureDefaultValue('1');
if(!${'page_count13_argument'}->isValid()) return ${'page_count13_argument'}->getErrorMessage();

${'list_count14_argument'} = new Argument('list_count', $args->{'list_count'});
${'list_count14_argument'}->ensureDefaultValue('20');
if(!${'list_count14_argument'}->isValid()) return ${'list_count14_argument'}->getErrorMessage();

${'sort_index10_argument'} = new Argument('sort_index', $args->{'sort_index'});
${'sort_index10_argument'}->ensureDefaultValue('documents.list_order');
if(!${'sort_index10_argument'}->isValid()) return ${'sort_index10_argument'}->getErrorMessage();

${'order_type11_argument'} = new SortArgument('order_type11', $args->order_type);
${'order_type11_argument'}->ensureDefaultValue('asc');
if(!${'order_type11_argument'}->isValid()) return ${'order_type11_argument'}->getErrorMessage();

$query->setColumns(array(
new StarExpression()
));
$query->setTables(array(
new Table('`xe_documents`', '`documents`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithoutArgument('`documents`.`module_srl`','0',"notin", 'and')
,new ConditionWithArgument('`documents`.`module_srl`',$module_srl6_argument,"in", 'and')
,new ConditionWithArgument('`documents`.`category_srl`',$category_srl7_argument,"equal", 'and')
,new ConditionWithArgument('`status`',$statusList8_argument,"in", 'and')))
,new ConditionGroup(array(
new ConditionWithArgument('`documents`.`last_update`',$duration_article9_argument,"more", 'and')),'and')
));
$query->setGroups(array());
$query->setOrder(array(
new OrderByColumn(${'sort_index10_argument'}, $order_type11_argument)
));
$query->setLimit(new Limit(${'list_count14_argument'}, ${'page12_argument'}, ${'page_count13_argument'}));
return $query; ?>