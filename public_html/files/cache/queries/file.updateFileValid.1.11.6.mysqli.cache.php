<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("updateFileValid");
$query->setAction("update");
$query->setPriority("");

${'isvalid39_argument'} = new Argument('isvalid', $args->{'isvalid'});
${'isvalid39_argument'}->ensureDefaultValue('Y');
${'isvalid39_argument'}->checkNotNull();
if(!${'isvalid39_argument'}->isValid()) return ${'isvalid39_argument'}->getErrorMessage();
if(${'isvalid39_argument'} !== null) ${'isvalid39_argument'}->setColumnType('char');

${'upload_target_srl40_argument'} = new ConditionArgument('upload_target_srl', $args->upload_target_srl, 'equal');
${'upload_target_srl40_argument'}->checkFilter('number');
${'upload_target_srl40_argument'}->checkNotNull();
${'upload_target_srl40_argument'}->createConditionValue();
if(!${'upload_target_srl40_argument'}->isValid()) return ${'upload_target_srl40_argument'}->getErrorMessage();
if(${'upload_target_srl40_argument'} !== null) ${'upload_target_srl40_argument'}->setColumnType('number');

$query->setColumns(array(
new UpdateExpression('`isvalid`', ${'isvalid39_argument'})
));
$query->setTables(array(
new Table('`xe_files`', '`files`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`upload_target_srl`',$upload_target_srl40_argument,"equal")))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>