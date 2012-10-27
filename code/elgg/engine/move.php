<?php
require_once('settings.php');

$con = mysql_connect($CONFIG->dbhost, $CONFIG->dbuser, $CONFIG->dbpass);
mysql_select_db($CONFIG->dbname, $con);
 
$sql = "UPDATE {$CONFIG->dbprefix}datalists
	SET value = 'E:/xampproject/htdocs/elgg/'
	WHERE name = 'path'";
mysql_query($sql);
print mysql_error();
 
$sql = "UPDATE {$CONFIG->dbprefix}datalists 
	SET value = 'E:/xampproject/htdocs/data/'
	WHERE name = 'dataroot'";
mysql_query($sql);
print mysql_error();
 
$sql = "UPDATE {$CONFIG->dbprefix}sites_entity
	SET url = 'http://localhost/elgg/'";
mysql_query($sql);
 
$sql = "UPDATE {$CONFIG->dbprefix}metastrings set string = 'E:/xampproject/htdocs/data/' WHERE id = (SELECT value_id from {$CONFIG->dbprefix}metadata where name_id = (SELECT * FROM (SELECT id FROM {$CONFIG->dbprefix}metastrings WHERE string = 'filestore::dir_root') as ms2) LIMIT 1)";
mysql_query($sql);
 
print mysql_error();
?>
