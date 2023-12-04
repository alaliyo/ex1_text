<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("getModulePartConfig");
$query->setAction("select");
$query->setPriority("");

${'module23_argument'} = new ConditionArgument('module', $args->module, 'equal');
${'module23_argument'}->checkNotNull();
${'module23_argument'}->createConditionValue();
if(!${'module23_argument'}->isValid()) return ${'module23_argument'}->getErrorMessage();
if(${'module23_argument'} !== null) ${'module23_argument'}->setColumnType('varchar');

${'module_srl24_argument'} = new ConditionArgument('module_srl', $args->module_srl, 'equal');
${'module_srl24_argument'}->checkNotNull();
${'module_srl24_argument'}->createConditionValue();
if(!${'module_srl24_argument'}->isValid()) return ${'module_srl24_argument'}->getErrorMessage();
if(${'module_srl24_argument'} !== null) ${'module_srl24_argument'}->setColumnType('number');

$query->setColumns(array(
new SelectExpression('`config`')
));
$query->setTables(array(
new Table('`xe_module_part_config`', '`module_part_config`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`module`',$module23_argument,"equal")
,new ConditionWithArgument('`module_srl`',$module_srl24_argument,"equal", 'and')))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>