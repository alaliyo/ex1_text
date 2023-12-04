<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("updateDocumentExtraVarIdxOrder");
$query->setAction("update");
$query->setPriority("");

${'var_idx7_argument'} = new Argument('var_idx', NULL);
${'var_idx7_argument'}->setColumnOperation('-');
${'var_idx7_argument'}->ensureDefaultValue(1);
if(!${'var_idx7_argument'}->isValid()) return ${'var_idx7_argument'}->getErrorMessage();
if(${'var_idx7_argument'} !== null) ${'var_idx7_argument'}->setColumnType('number');

${'module_srl8_argument'} = new ConditionArgument('module_srl', $args->module_srl, 'equal');
${'module_srl8_argument'}->checkFilter('number');
${'module_srl8_argument'}->checkNotNull();
${'module_srl8_argument'}->createConditionValue();
if(!${'module_srl8_argument'}->isValid()) return ${'module_srl8_argument'}->getErrorMessage();
if(${'module_srl8_argument'} !== null) ${'module_srl8_argument'}->setColumnType('number');

${'var_idx9_argument'} = new ConditionArgument('var_idx', $args->var_idx, 'excess');
${'var_idx9_argument'}->checkFilter('number');
${'var_idx9_argument'}->checkNotNull();
${'var_idx9_argument'}->createConditionValue();
if(!${'var_idx9_argument'}->isValid()) return ${'var_idx9_argument'}->getErrorMessage();
if(${'var_idx9_argument'} !== null) ${'var_idx9_argument'}->setColumnType('number');

$query->setColumns(array(
new UpdateExpression('`var_idx`', ${'var_idx7_argument'})
));
$query->setTables(array(
new Table('`xe_document_extra_vars`', '`document_extra_vars`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`module_srl`',$module_srl8_argument,"equal")
,new ConditionWithArgument('`var_idx`',$var_idx9_argument,"excess", 'and')))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>