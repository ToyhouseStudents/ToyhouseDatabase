<?php

$userid=10;
$classid=5;

require 'media_functions.php';
$uploaded=false;
$arr=explode('.', $_FILES["file"]["name"]);
$num=count($arr);
$fileformat=$arr[$num-1];
$filename='';
$photopath='';
$filepath='';
for($i=0;$i<$num-1;$i++)
{
	$filename.=$arr[$i];
}
  if ($_FILES["file"]["error"] > 0)
    {
		echo "<head><meta http-equiv='Refresh' content='2;url=index.php'></head>";
    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
    }
  else if(!isLegalFormat($fileformat))
  {
	  echo "<head><meta http-equiv='Refresh' content='2;url=index.php'></head>";
	echo "不合规范的格式！";
  }
  else
    {

    if (file_exists("uploadedfiles/" . $_FILES["file"]["name"]))
      {
		echo "<head><meta http-equiv='Refresh' content='2;url=index.php'></head>";
      echo $_FILES["file"]["name"] . " already exists. ";
      }
    else
      {
		$filepath="uploadedfiles/".time()."_".$_FILES["file"]["name"];
		move_uploaded_file($_FILES["file"]["tmp_name"],$filepath);
		$photopath=output_photopath($filepath,$filename,$fileformat);
      	$uploaded=true;
      }
    }
	if($uploaded)
	{
		$conn=mysql_connect("localhost","mema","mema");
		mysql_query("set names utf8");
		mysql_select_db("test");
		$sql=sprintf("INSERT INTO mediafiles(userid, classid, title, format, filepath, photopath, filesize, ispublic) VALUES ('%d','%d','%s','%s','%s','%s','%d','%d')", $userid, $classid, $filename, $fileformat, $filepath, $photopath, $_FILES["file"]["size"] / 1024, 1);
		#echo $sql;
		$result=mysql_query($sql);
		echo '<br>';
		if($result)
		{
			//echo "上传成功！<br>";
		}
		else 
		{
			//echo "上传失败<br>";
		}
		header("location:display.php");
	}

?>
