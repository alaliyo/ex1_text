<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("isExistsModuleName");
$query->setAction("select");
$query->setPriority("");

${'site_srl4_argument'} = new ConditionArgument('site_srl', $args->site_srl, 'equal');
${'site_srl4_argument'}->ensureDefaultValue('0');
${'site_srl4_argument'}->checkNotNull();
${'site_srl4_argument'}->createConditionValue();
if(!${'site_srl4_argument'}->isValid()) return ${'site_srl4_argument'}->getErrorMessage();
if(${'site_srl4_argument'} !== null) ${'site_srl4_argument'}->setColumnType('number');

${'mid5_argument'} = new ConditionArgument('mid', $args->mid, 'equal');
${'mid5_argument'}->checkNotNull();
${'mid5_argument'}->createConditionValue();
if(!${'mid5_argument'}->isValid()) return ${'mid5_argument'}->getErrorMessage();
if(${'mid5_argument'} !== null) ${'mid5_argument'}->setColumnType('varchar');

${'module_srl6_argument'} = new ConditionArgument('module_srl', $args->module_srl, 'notequal');
${'module_srl6_argument'}->ensureDefaultValue('0');
${'module_srl6_argument'}->checkNotNull();
${'module_srl6_argument'}->createConditionValue();
if(!${'module_srl6_argument'}->isValid()) return ${'module_srl6_argument'}->getErrorMessage();
if(${'module_srl6_argument'} !== null) ${'module_srl6_argument'}->setColumnType('number');

$query->setColumns(array(
new SelectExpression('count(*)', '`count`')
));
$query->setTables(array(
new Table('`xe_modules`', '`modules`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`site_srl`',$site_srl4_argument,"equal")
,new ConditionWithArgument('`mid`',$mid5_argument,"equal", 'and')
,new ConditionWithArgument('`module_srl`',$module_srl6_argument,"notequal", 'and')))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>