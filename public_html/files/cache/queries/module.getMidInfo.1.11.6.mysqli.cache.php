<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("getMidInfo");
$query->setAction("select");
$query->setPriority("");
if(isset($args->mid)) {
${'mid19_argument'} = new ConditionArgument('mid', $args->mid, 'equal');
${'mid19_argument'}->createConditionValue();
if(!${'mid19_argument'}->isValid()) return ${'mid19_argument'}->getErrorMessage();
} else
${'mid19_argument'} = NULL;if(${'mid19_argument'} !== null) ${'mid19_argument'}->setColumnType('varchar');
if(isset($args->module_srl)) {
${'module_srl20_argument'} = new ConditionArgument('module_srl', $args->module_srl, 'equal');
${'module_srl20_argument'}->createConditionValue();
if(!${'module_srl20_argument'}->isValid()) return ${'module_srl20_argument'}->getErrorMessage();
} else
${'module_srl20_argument'} = NULL;if(${'module_srl20_argument'} !== null) ${'module_srl20_argument'}->setColumnType('number');
if(isset($args->site_srl)) {
${'site_srl21_argument'} = new ConditionArgument('site_srl', $args->site_srl, 'equal');
${'site_srl21_argument'}->createConditionValue();
if(!${'site_srl21_argument'}->isValid()) return ${'site_srl21_argument'}->getErrorMessage();
} else
${'site_srl21_argument'} = NULL;if(${'site_srl21_argument'} !== null) ${'site_srl21_argument'}->setColumnType('number');

$query->setColumns(array(
new StarExpression()
));
$query->setTables(array(
new Table('`xe_modules`', '`modules`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`mid`',$mid19_argument,"equal")
,new ConditionWithArgument('`module_srl`',$module_srl20_argument,"equal", 'and')
,new ConditionWithArgument('`site_srl`',$site_srl21_argument,"equal", 'and')))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>