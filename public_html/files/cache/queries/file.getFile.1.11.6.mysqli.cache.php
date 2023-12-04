<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("getFile");
$query->setAction("select");
$query->setPriority("");

${'file_srl14_argument'} = new ConditionArgument('file_srl', $args->file_srl, 'in');
${'file_srl14_argument'}->checkFilter('number');
${'file_srl14_argument'}->checkNotNull();
${'file_srl14_argument'}->createConditionValue();
if(!${'file_srl14_argument'}->isValid()) return ${'file_srl14_argument'}->getErrorMessage();
if(${'file_srl14_argument'} !== null) ${'file_srl14_argument'}->setColumnType('number');

$query->setColumns(array(
new StarExpression()
));
$query->setTables(array(
new Table('`xe_files`', '`files`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`file_srl`',$file_srl14_argument,"in")))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>