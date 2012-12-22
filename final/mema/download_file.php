<?php 
	$fileid=$_GET['fileid'];
	$conn=mysql_connect("localhost","mema","mema");
	mysql_query("set names utf8");
	mysql_select_db("test");
	$sql="SELECT filepath,title,format FROM mediafiles WHERE fileid = '"."$fileid '";
	$result=mysql_query($sql);
	$r=mysql_fetch_array($result);
	$filepath=$r[0];
	$title=$r[1];
    $format=$r[2];
	if (!file_exists($filepath)){
		header("Content-type: text/html; charset=utf-8");
		echo "File not found!";
		exit;
		} 
	else{        
		$file = fopen($filepath,"r"); //打开文件
        	//输入文件标签
			header( "Pragma: public" );
			header( "Expires: 0" ); 
       		Header("Content_type:application/octet-stream");
       	 	Header("Accept-Ranges:bytes");
        	Header("Accept-Length:".filesize($filepath));
       		Header("Content-Disposition:attachment;filename=".$title.".".$format);
        	//输出文件内容
        	echo fread($file,filesize($filepath));
        	fclose($file);                      
        	exit();
		}
?>