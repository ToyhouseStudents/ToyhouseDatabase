<?php 
	//defined('IN_MEMa') or die('Access Denied.');

	$userid=10;
	$username="MEMa";

	require 'media_functions.php';
	$fileid=$_GET['fileid'];
	$mode=$_GET['mode'];
	$conn=mysql_connect("localhost","mema","mema");
	mysql_query("set names utf8");
	mysql_select_db("test");
	$sql="SELECT title,format,filepath FROM mediafiles WHERE fileid = '"."$fileid '";
	$result=mysql_query($sql);
	$r=mysql_fetch_object($result);
	$filepath=$r->filepath;
	$filename=$r->title;
	$fileformat=$r->format;
	if(isVideo($fileformat)&&$mode==1)
	{
		$sql="SELECT filepath FROM mediafiles_transcoded_videos WHERE fileid= '"."$fileid'";
		$result=mysql_query($sql);
		$r=mysql_fetch_object($result);
		if($r){
			$filepath=$r->filepath;
			$fileformat='flv';
		}
		else
			$mode=-1;
	}
?>

<html>
<body>
<div >

</div>
</body>
</html>

<html>


<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>MEMa</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="wrapper-bgtop">
		<div id="header">
			<div id="logo">
			<a href="index.php">
				<h1>MEMa</h1>
			</a>
				<p><em> Distinguished Learning Experience </em></p>
			</div>
			<hr />
			<!-- end #logo -->
			<div id="menu">
				
			</div>
		</div>
		<!-- end #header -->
		<!-- end #header-wrapper -->
		<div id="page">
			<div id="content" >
				<h2 style="padding-top:10;margin-bottom:10;font-size:27;"">&nbsp;<?php echo $filename;?>&nbsp;<span style="font-size:9;float:right;">上传者：<?php echo $username;?>&nbsp;&nbsp;</span></h2>
<?php
	require_once 'media_functions.php';
	play_files("http://adm.toyhouse.cc/mema/".$filepath,$fileformat,700,550);
	//play_files("http://192.168.2.153/mema/".$filepath,$fileformat,700,550);
	echo "<p>";
	if($mode==1&&isVideo($fileformat))
	{
		echo "<a href=preview.php?fileid=$fileid&mode=0>观看原版</a>";
	}
	else if(isVideo($fileformat)&&$mode==0)
	{
		echo "<a href=preview.php?fileid=$fileid&mode=1>观看标清版</a>";
	}
	echo "<div style='width:650px;'>";
	echo "<form action='comment_submit.php?fileid=$fileid&mode=$mode' method='post' name='comment'>";
	echo "<textarea name='content' rows=5 cols=90></textarea><br>";
	echo "<div style='float:right;'><input type='submit' value='评论'></div>";
	echo "<p></div><br><p>";

	$sql="SELECT userid,content,addtime FROM mediafiles_comment WHERE fileid=$fileid ORDER BY commentid DESC LIMIT 20 ";
	$result=mysql_query($sql);
	echo "<div>";
	while($r=mysql_fetch_object($result))
	{
		echo "<div style='width:650px;'>";
		echo "<span style='font-size:10;color:GRAY;'>$username&nbsp;写于&nbsp;$r->addtime</span><p><p>";
		echo "<span style='font-size:15;'>$r->content</span><br>";
		echo "<span style='font-size:10;color:GRAY;'>------------------------------------------------------------------------------------------------------------------------------------------------------------------</span>";
		echo "</div>";
	}
	echo "</div>";
?>
			</div>
			<!-- end #content -->
			
			<!-- end #sidebar -->
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #page -->
	</div>
</div>
<div id="footer-bgcontent">
	<div id="footer">
		<p>All rights reserved. Design by MEMa.</p>
	</div>
</div>
<!-- end #footer -->
</body>
</html>