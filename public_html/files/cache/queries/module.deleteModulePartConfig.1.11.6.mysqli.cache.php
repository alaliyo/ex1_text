<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("deleteModulePartConfig");
$query->setAction("delete");
$query->setPriority("");

${'module42_argument'} = new ConditionArgument('module', $args->module, 'equal');
${'module42_argument'}->checkNotNull();
${'module42_argument'}->createConditionValue();
if(!${'module42_argument'}->isValid()) return ${'module42_argument'}->getErrorMessage();
if(${'module42_argument'} !== null) ${'module42_argument'}->setColumnType('varchar');

${'module_srl43_argument'} = new ConditionArgument('module_srl', $args->module_srl, 'equal');
${'module_srl43_argument'}->checkNotNull();
${'module_srl43_argument'}->createConditionValue();
if(!${'module_srl43_argument'}->isValid()) return ${'module_srl43_argument'}->getErrorMessage();
if(${'module_srl43_argument'} !== null) ${'module_srl43_argument'}->setColumnType('number');

$query->setTables(array(
new Table('`xe_module_part_config`', '`module_part_config`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`module`',$module42_argument,"equal")
,new ConditionWithArgument('`module_srl`',$module_srl43_argument,"equal", 'and')))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>