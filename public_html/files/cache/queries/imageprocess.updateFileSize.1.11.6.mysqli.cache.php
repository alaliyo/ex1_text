<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("updateFileSize");
$query->setAction("update");
$query->setPriority("");

${'file_size17_argument'} = new Argument('file_size', $args->{'file_size'});
${'file_size17_argument'}->checkNotNull();
if(!${'file_size17_argument'}->isValid()) return ${'file_size17_argument'}->getErrorMessage();
if(${'file_size17_argument'} !== null) ${'file_size17_argument'}->setColumnType('number');

${'file_srl18_argument'} = new ConditionArgument('file_srl', $args->file_srl, 'equal');
${'file_srl18_argument'}->checkFilter('number');
${'file_srl18_argument'}->checkNotNull();
${'file_srl18_argument'}->createConditionValue();
if(!${'file_srl18_argument'}->isValid()) return ${'file_srl18_argument'}->getErrorMessage();
if(${'file_srl18_argument'} !== null) ${'file_srl18_argument'}->setColumnType('number');

$query->setColumns(array(
new UpdateExpression('`file_size`', ${'file_size17_argument'})
));
$query->setTables(array(
new Table('`xe_files`', '`files`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`file_srl`',$file_srl18_argument,"equal")))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>