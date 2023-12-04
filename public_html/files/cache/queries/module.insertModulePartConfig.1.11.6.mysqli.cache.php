<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("insertModulePartConfig");
$query->setAction("insert");
$query->setPriority("");

${'module44_argument'} = new Argument('module', $args->{'module'});
${'module44_argument'}->checkNotNull();
if(!${'module44_argument'}->isValid()) return ${'module44_argument'}->getErrorMessage();
if(${'module44_argument'} !== null) ${'module44_argument'}->setColumnType('varchar');

${'module_srl45_argument'} = new Argument('module_srl', $args->{'module_srl'});
${'module_srl45_argument'}->checkNotNull();
if(!${'module_srl45_argument'}->isValid()) return ${'module_srl45_argument'}->getErrorMessage();
if(${'module_srl45_argument'} !== null) ${'module_srl45_argument'}->setColumnType('number');
if(isset($args->config)) {
${'config46_argument'} = new Argument('config', $args->{'config'});
if(!${'config46_argument'}->isValid()) return ${'config46_argument'}->getErrorMessage();
} else
${'config46_argument'} = NULL;if(${'config46_argument'} !== null) ${'config46_argument'}->setColumnType('text');

${'regdate47_argument'} = new Argument('regdate', $args->{'regdate'});
${'regdate47_argument'}->ensureDefaultValue(date("YmdHis"));
if(!${'regdate47_argument'}->isValid()) return ${'regdate47_argument'}->getErrorMessage();
if(${'regdate47_argument'} !== null) ${'regdate47_argument'}->setColumnType('date');

$query->setColumns(array(
new InsertExpression('`module`', ${'module44_argument'})
,new InsertExpression('`module_srl`', ${'module_srl45_argument'})
,new InsertExpression('`config`', ${'config46_argument'})
,new InsertExpression('`regdate`', ${'regdate47_argument'})
));
$query->setTables(array(
new Table('`xe_module_part_config`', '`module_part_config`')
));
$query->setConditions(array());
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>