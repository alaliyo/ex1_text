<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("updateUploadedCount");
$query->setAction("update");
$query->setPriority("");

${'uploaded_count16_argument'} = new Argument('uploaded_count', $args->{'uploaded_count'});
${'uploaded_count16_argument'}->checkFilter('number');
${'uploaded_count16_argument'}->ensureDefaultValue('0');
if(!${'uploaded_count16_argument'}->isValid()) return ${'uploaded_count16_argument'}->getErrorMessage();
if(${'uploaded_count16_argument'} !== null) ${'uploaded_count16_argument'}->setColumnType('number');

${'document_srl17_argument'} = new ConditionArgument('document_srl', $args->document_srl, 'equal');
${'document_srl17_argument'}->checkFilter('number');
${'document_srl17_argument'}->checkNotNull();
${'document_srl17_argument'}->createConditionValue();
if(!${'document_srl17_argument'}->isValid()) return ${'document_srl17_argument'}->getErrorMessage();
if(${'document_srl17_argument'} !== null) ${'document_srl17_argument'}->setColumnType('number');

$query->setColumns(array(
new UpdateExpression('`uploaded_count`', ${'uploaded_count16_argument'})
));
$query->setTables(array(
new Table('`xe_documents`', '`documents`')
));
$query->setConditions(array(
new ConditionGroup(array(
new ConditionWithArgument('`document_srl`',$document_srl17_argument,"equal")))
));
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>