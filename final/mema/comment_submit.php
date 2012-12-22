<?php
	$fileid=$_GET['fileid'];
	$mode=$_GET['mode'];
	$comment_content=$_POST['content'];
	$userid=10;

	$conn=mysql_connect("localhost","root","iamjustin");
	mysql_query("set names utf8");
	mysql_select_db("test");
	
	$sql=sprintf("INSERT INTO mediafiles_comment(fileid,userid,content) VALUES ('%d','%d','%s')",$fileid,$userid,$comment_content);
	mysql_query($sql);
	
	header("location:preview.php?fileid=$fileid&mode=$mode");
?>