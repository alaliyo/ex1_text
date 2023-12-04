<?php if(!defined('__XE__')) exit();
$query = new Query();
$query->setQueryId("insertFile");
$query->setAction("insert");
$query->setPriority("");

${'file_srl2_argument'} = new Argument('file_srl', $args->{'file_srl'});
${'file_srl2_argument'}->checkNotNull();
if(!${'file_srl2_argument'}->isValid()) return ${'file_srl2_argument'}->getErrorMessage();
if(${'file_srl2_argument'} !== null) ${'file_srl2_argument'}->setColumnType('number');

${'upload_target_srl3_argument'} = new Argument('upload_target_srl', $args->{'upload_target_srl'});
${'upload_target_srl3_argument'}->checkFilter('number');
${'upload_target_srl3_argument'}->ensureDefaultValue('0');
${'upload_target_srl3_argument'}->checkNotNull();
if(!${'upload_target_srl3_argument'}->isValid()) return ${'upload_target_srl3_argument'}->getErrorMessage();
if(${'upload_target_srl3_argument'} !== null) ${'upload_target_srl3_argument'}->setColumnType('number');
if(isset($args->sid)) {
${'sid4_argument'} = new Argument('sid', $args->{'sid'});
if(!${'sid4_argument'}->isValid()) return ${'sid4_argument'}->getErrorMessage();
} else
${'sid4_argument'} = NULL;if(${'sid4_argument'} !== null) ${'sid4_argument'}->setColumnType('varchar');

${'module_srl5_argument'} = new Argument('module_srl', $args->{'module_srl'});
${'module_srl5_argument'}->checkFilter('number');
${'module_srl5_argument'}->ensureDefaultValue('0');
${'module_srl5_argument'}->checkNotNull();
if(!${'module_srl5_argument'}->isValid()) return ${'module_srl5_argument'}->getErrorMessage();
if(${'module_srl5_argument'} !== null) ${'module_srl5_argument'}->setColumnType('number');

${'source_filename6_argument'} = new Argument('source_filename', $args->{'source_filename'});
${'source_filename6_argument'}->checkNotNull();
if(!${'source_filename6_argument'}->isValid()) return ${'source_filename6_argument'}->getErrorMessage();
if(${'source_filename6_argument'} !== null) ${'source_filename6_argument'}->setColumnType('varchar');

${'uploaded_filename7_argument'} = new Argument('uploaded_filename', $args->{'uploaded_filename'});
${'uploaded_filename7_argument'}->checkNotNull();
if(!${'uploaded_filename7_argument'}->isValid()) return ${'uploaded_filename7_argument'}->getErrorMessage();
if(${'uploaded_filename7_argument'} !== null) ${'uploaded_filename7_argument'}->setColumnType('varchar');

${'file_size8_argument'} = new Argument('file_size', $args->{'file_size'});
${'file_size8_argument'}->ensureDefaultValue('0');
${'file_size8_argument'}->checkNotNull();
if(!${'file_size8_argument'}->isValid()) return ${'file_size8_argument'}->getErrorMessage();
if(${'file_size8_argument'} !== null) ${'file_size8_argument'}->setColumnType('number');

${'direct_download9_argument'} = new Argument('direct_download', $args->{'direct_download'});
${'direct_download9_argument'}->ensureDefaultValue('N');
${'direct_download9_argument'}->checkNotNull();
if(!${'direct_download9_argument'}->isValid()) return ${'direct_download9_argument'}->getErrorMessage();
if(${'direct_download9_argument'} !== null) ${'direct_download9_argument'}->setColumnType('char');
if(isset($args->comment)) {
${'comment10_argument'} = new Argument('comment', $args->{'comment'});
if(!${'comment10_argument'}->isValid()) return ${'comment10_argument'}->getErrorMessage();
} else
${'comment10_argument'} = NULL;if(${'comment10_argument'} !== null) ${'comment10_argument'}->setColumnType('varchar');

${'download_count11_argument'} = new Argument('download_count', $args->{'download_count'});
${'download_count11_argument'}->ensureDefaultValue('0');
if(!${'download_count11_argument'}->isValid()) return ${'download_count11_argument'}->getErrorMessage();
if(${'download_count11_argument'} !== null) ${'download_count11_argument'}->setColumnType('number');

${'member_srl12_argument'} = new Argument('member_srl', $args->{'member_srl'});
${'member_srl12_argument'}->ensureDefaultValue('0');
if(!${'member_srl12_argument'}->isValid()) return ${'member_srl12_argument'}->getErrorMessage();
if(${'member_srl12_argument'} !== null) ${'member_srl12_argument'}->setColumnType('number');

${'is_cover13_argument'} = new Argument('is_cover', $args->{'is_cover'});
${'is_cover13_argument'}->ensureDefaultValue('N');
if(!${'is_cover13_argument'}->isValid()) return ${'is_cover13_argument'}->getErrorMessage();
if(${'is_cover13_argument'} !== null) ${'is_cover13_argument'}->setColumnType('char');

${'regdate14_argument'} = new Argument('regdate', $args->{'regdate'});
${'regdate14_argument'}->ensureDefaultValue(date("YmdHis"));
if(!${'regdate14_argument'}->isValid()) return ${'regdate14_argument'}->getErrorMessage();
if(${'regdate14_argument'} !== null) ${'regdate14_argument'}->setColumnType('date');

${'ipaddress15_argument'} = new Argument('ipaddress', $args->{'ipaddress'});
${'ipaddress15_argument'}->ensureDefaultValue($_SERVER['REMOTE_ADDR']);
if(!${'ipaddress15_argument'}->isValid()) return ${'ipaddress15_argument'}->getErrorMessage();
if(${'ipaddress15_argument'} !== null) ${'ipaddress15_argument'}->setColumnType('varchar');

${'isvalid16_argument'} = new Argument('isvalid', $args->{'isvalid'});
${'isvalid16_argument'}->ensureDefaultValue('N');
if(!${'isvalid16_argument'}->isValid()) return ${'isvalid16_argument'}->getErrorMessage();
if(${'isvalid16_argument'} !== null) ${'isvalid16_argument'}->setColumnType('char');

$query->setColumns(array(
new InsertExpression('`file_srl`', ${'file_srl2_argument'})
,new InsertExpression('`upload_target_srl`', ${'upload_target_srl3_argument'})
,new InsertExpression('`sid`', ${'sid4_argument'})
,new InsertExpression('`module_srl`', ${'module_srl5_argument'})
,new InsertExpression('`source_filename`', ${'source_filename6_argument'})
,new InsertExpression('`uploaded_filename`', ${'uploaded_filename7_argument'})
,new InsertExpression('`file_size`', ${'file_size8_argument'})
,new InsertExpression('`direct_download`', ${'direct_download9_argument'})
,new InsertExpression('`comment`', ${'comment10_argument'})
,new InsertExpression('`download_count`', ${'download_count11_argument'})
,new InsertExpression('`member_srl`', ${'member_srl12_argument'})
,new InsertExpression('`cover_image`', ${'is_cover13_argument'})
,new InsertExpression('`regdate`', ${'regdate14_argument'})
,new InsertExpression('`ipaddress`', ${'ipaddress15_argument'})
,new InsertExpression('`isvalid`', ${'isvalid16_argument'})
));
$query->setTables(array(
new Table('`xe_files`', '`files`')
));
$query->setConditions(array());
$query->setGroups(array());
$query->setOrder(array());
$query->setLimit();
return $query; ?>