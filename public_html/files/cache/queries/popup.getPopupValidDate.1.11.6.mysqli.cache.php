<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("getPopupValidDate");
$query->setAction("select");
$query->setPriority("");
if(isset($args->curdate)) {
${'curdate30_argument'} = new ConditionArgument('curdate', $args->curdate, 'less');
${'curdate30_argument'}->createConditionValue();
if(!${'curdate30_argument'}->isValid()) return ${'curdate30_argument'}->getErrorMessage();
} else
${'curdate30_argument'} = NULL;if(${'curdate30_argument'} !== null) ${'curdate30_argument'}->setColumnType('date');
if(isset($args->curdate)) {
${'curdate31_argument'} = new ConditionArgument('curdate', $args->curdate, 'more');
${'curdate31_argument'}->createConditionValue();
if(!${'curdate31_argument'}->isValid()) return ${'curdate31_argument'}->getErrorMessage();
} else
${'curdate31_argument'} = NULL;if(${'curdate31_argument'} !== null) ${'curdate31_argument'}->setColumnType('date');

$query->setColumns(array(
new StarExpression()
));
$query->setTables(array(
new Table('`xe_popup`', '`popup`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`start_date`',$curdate30_argument,"less")
,new ConditionWithArgument('`end_date`',$curdate31_argument,"more", 'and')))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>