<!--<!DOCTYPE html>-->
<?php
	//defined('IN_MEMa') or die('Access Denied.');
?>
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
				<form action="upload_file.php" method="post"
enctype="multipart/form-data">
<!--<label for="file"><br>-->
</label>
<p>
  <input type="file" name="file" id="file" /><br>
  <input type="submit" name="submit" value="上传文件" />
</p>
</form>
			</div>
		</div>
		<!-- end #header -->
		<!-- end #header-wrapper -->
		<div id="page">
			<div id="content">
				<?php 
	$conn=mysql_connect("localhost","mema","mema");
	mysql_query("set names utf8");
	mysql_select_db("test");
	$sql="select fileid,title,photopath,addtime from mediafiles ORDER BY fileid DESC ";
	$result=mysql_query($sql);
	while($r=mysql_fetch_object($result))
	{
		echo "<div style='margin:10; margin-bottom:30;'>";
		echo "<div style='display:inline;'>";
		echo "<a href=preview.php?fileid=$r->fileid&mode=1>";
		echo "<img src=$r->photopath width=100 height=75>";
		echo "</a></div>";
		echo "<div style='display:inline; margin-left:15;'>";
		echo "<a href=preview.php?fileid=$r->fileid&mode=1><h2 style='display:inline;'>$r->title</h2></a>";
		
		echo "&nbsp;&nbsp;&nbsp;<span style='font-size:10; color:GRAY;'>&nbsp;$r->addtime</span>";
		echo "&nbsp;&nbsp;&nbsp;<a href=download_file.php?fileid=$r->fileid>下载</a>";
		echo "</div>";
		echo "</div>";
	}
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