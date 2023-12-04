<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("deleteexif");
$query->setAction("delete");
$query->setPriority("");
if(isset($args->file_srl)) {
${'file_srl1_argument'} = new ConditionArgument('file_srl', $args->file_srl, 'equal');
${'file_srl1_argument'}->checkFilter('number');
${'file_srl1_argument'}->createConditionValue();
if(!${'file_srl1_argument'}->isValid()) return ${'file_srl1_argument'}->getErrorMessage();
} else
${'file_srl1_argument'} = NULL;if(${'file_srl1_argument'} !== null) ${'file_srl1_argument'}->setColumnType('number');
if(isset($args->target_srl)) {
${'target_srl2_argument'} = new ConditionArgument('target_srl', $args->target_srl, 'equal');
${'target_srl2_argument'}->checkFilter('number');
${'target_srl2_argument'}->createConditionValue();
if(!${'target_srl2_argument'}->isValid()) return ${'target_srl2_argument'}->getErrorMessage();
} else
${'target_srl2_argument'} = NULL;if(${'target_srl2_argument'} !== null) ${'target_srl2_argument'}->setColumnType('number');

$query->setTables(array(
new Table('`xe_imageexif`', '`imageexif`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`file_srl`',$file_srl1_argument,"equal")
,new ConditionWithArgument('`target_srl`',$target_srl2_argument,"equal", 'and')))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>