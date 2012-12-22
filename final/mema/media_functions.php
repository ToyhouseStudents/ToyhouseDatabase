<?php
	function isVideo($format)
	{
		if($format=='mp4'||$format=='mpg'||$format=='rmvb'||$format=='avi'||$format=='wmv'||$format=='rm'||$format=='flv'||$format=='mkv'||$format=='mov'||$format=='vob')
			return true;
		else
			return false;
	}

	function isFlash($format)
	{
		return $format=='swf';
	}

	function isAudio($format)
	{
		if($format=='mp3'||$format=='wma')
			return true;
		else
			return false;
	}

	function isImage($format)
	{
		if($format=='jpg'||$format=='jpeg'||$format=='bmp'||$format=='png')
			return true;
		else
			return false;
	}

	function isDocument($format)
	{
		if($format=='doc'||$format=='docx'||$format=='ppt'||$format=='pptx'||$format=='xls'||$format=='xlsx'||$format=='psd'||$format=='txt'||$format=='c'||$format=='cpp'||$format=='cs'||$format=='php'||$format=='h'||$format=='js'||$format=='css'||$format=='java'||$format=='html'||$format=='pdf'||$format=='rar'||$format=='zip')
			return true;
		else
			return false;
	}

	function isCDF($format)
	{
		return $format=="cdf";
	}

	function isUnity3d($format)
	{
		return $format=="unity3d";
	}

	function isLegalFormat($format)
	{
		return isVideo($format)||isAudio($format)||isImage($format)||isDocument($format)||isCDF($format)||isFlash($format)||isUnity3d($format);
	}

	function play_document($url,$format,$_width,$_height)
	{
		$type='';
		if($format=='pdf')
			$type='application/pdf';
		else if($format=='docx'||$format=='doc')
			$type='application/vnd.openxmlformats-officedocument.wordprocessingml.document';
		else if($format=='ppt'||$format=='pptx')
			$type='application/vnd.openxmlformats-officedocument.presentationml.presentation';
		else if($format=='xls'||$format=='xlsx')
			$type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
		else if($format=='psd')
			$type='image/photoshop';
		else if($format=='txt'||$format=='c'||$format=='cpp'||$format=='cs'||$format=='h')
			$type='text/plain';
		else if($format=='html')
			$type='text/html';
		else if($format=='js')
			$type='application/x-javascript';
		else if($format=='php')
			$type='application/php';
		else if($format=='css')
			$type='text/css';
		else if($format=='zip')
			$type='application/zip';
		else if($format=='rar')
			$type='application/x-rar-compressed';
		$ifr_code="<iframe src=\"http://docs.google.com/viewer?url=" . $url . "&embedded=true\" width=\"" . $_width . "\" height=\"" . $_height . "\" style=\"border: none;\" type=\"$type\"></iframe>";
		echo $ifr_code;
	}

	function play_video($url, $width, $height)
	{
		$pv='';  
		$pv .= '<object width="'.$width.'" height="'.$height.'" id="iask_v" classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,5,715" standby="Loading Microsoft Windows Media Player components..." type="application/x-oleobject">';  
		$pv .= '<param name="FileName" value="'.$url.'">';  
		$pv .= '<param name="AutoStart" value="1">';  
		$pv .= '<param name="AutoSize" value="1">';  
		$pv .= '<param name="ShowControls" value="1">';  
		$pv .= '<param name="ShowPositionControls" value="0">';  
		$pv .= '<param name="ShowAudioControls" value="1">';  
		$pv .= '<param name="ShowTracker" value="1">';  
		$pv .= '<param name="ShowDisplay" value="0">';  
		$pv .= '<param name="ShowStatusBar" value="1">';  
		$pv .= '<param name="ShowGotoBar" value="0">';  
		$pv .= '<param name="ShowCaptioning" value="0">';  
		$pv .= '<param name="PlayCount" value="1">';  
		$pv .= '<param name="AnimationAtStart" value="0">';  
		$pv .= '<param name="TransparentAtStart" value="0">';  
		$pv .= '<param name="AllowScan" value="0">';  
		$pv .= '<param name="EnableContextMenu" value="0">';  
		$pv .= '<param name="ClickToPlay" value="0">';  
		$pv .= '<param name="InvokeURLs" value="1">';  
		$pv .= '<param name="DefaultFrame" value="">';  
		$pv .= '<embed src="'.$url.'" width="'.$width.'" height="'.$height.'" type="application/x-mplayer2" pluginspage="http://www.microsoft.com/isapi/redir.dll?prd=windows&;sbp=mediaplayer&ar=media&sba=plugin&" name="MediaPlayer" showcontrols="1" showpositioncontrols="0" showaudiocontrols="1" showtracker="1" showdisplay="0" showstatusbar="1" autosize="0" showgotobar="0" showcaptioning="0" autostart="1" autorewind="0" animationatstart="0" transparentatstart="0" allowscan="1" enablecontextmenu="1" clicktoplay="0" invokeurls="1" defaultframe=""></embed>';
		$pv .= '</object>';
		echo $pv;
	}

	function play_flash($url, $width, $height)
	{
		$pf=''; 
		$pf .= '<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="'.$width.'" height="'.$height.'">
		<param name="movie" value="myFlash.swf">
		<param name="quality" value="High">
		<embed src="'.$url.'" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="'.$width.'" height="'.$height.'"></object>';
		echo $pf;
	}

	function play_audio($url, $width, $height)
	{
		$pv='';  
		$pv .= '<object width="'.$width.'" height="'.$height.'" id="iask_v" classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,5,715" standby="Loading Microsoft Windows Media Player components..." type="application/x-oleobject">';  
		$pv .= '<param name="FileName" value="'.$url.'">';  
		$pv .= '<param name="AutoStart" value="1">';  
		$pv .= '<param name="AutoSize" value="1">';  
		$pv .= '<param name="ShowControls" value="1">';  
		$pv .= '<param name="ShowPositionControls" value="0">';  
		$pv .= '<param name="ShowAudioControls" value="1">';  
		$pv .= '<param name="ShowTracker" value="1">';  
		$pv .= '<param name="ShowDisplay" value="0">';  
		$pv .= '<param name="ShowStatusBar" value="1">';  
		$pv .= '<param name="ShowGotoBar" value="0">';  
		$pv .= '<param name="ShowCaptioning" value="0">';  
		$pv .= '<param name="PlayCount" value="1">';  
		$pv .= '<param name="AnimationAtStart" value="0">';  
		$pv .= '<param name="TransparentAtStart" value="0">';  
		$pv .= '<param name="AllowScan" value="0">';  
		$pv .= '<param name="EnableContextMenu" value="0">';  
		$pv .= '<param name="ClickToPlay" value="0">';  
		$pv .= '<param name="InvokeURLs" value="1">';  
		$pv .= '<param name="DefaultFrame" value="">';  
		$pv .= '<embed src="'.$url.'" width="'.$width.'" height="'.$height.'" type="application/x-mplayer2" pluginspage="http://www.microsoft.com/isapi/redir.dll?prd=windows&;sbp=mediaplayer&ar=media&sba=plugin&" name="MediaPlayer" showcontrols="1" showpositioncontrols="0" showaudiocontrols="1" showtracker="1" showdisplay="0" showstatusbar="1" autosize="0" showgotobar="0" showcaptioning="0" autostart="1" autorewind="0" animationatstart="0" transparentatstart="0" allowscan="1" enablecontextmenu="1" clicktoplay="0" invokeurls="1" defaultframe=""></embed>';  
		$pv .= '</object>';  
		echo $pv;
	}

	function play_image($url,$width,$height)
	{
		echo "<img src=$url width=$width height=$height>";
	}

	function play_CDF($url,$width,$height)
	{
		echo "<script type='text/javascript' src='cdf.js'></script>
				<script type='text/javascript'>
				var cdf = new cdfplugin();
				cdf.embed('$url', $width, $height);
				</script>";
	}

	function play_unity3d($url, $width, $height)
	{
		$pu = ''; 
		$pu .= '<object id="UnityObject" classid="clsid:444785F1-DE89-4295-863A-D46C3A781394" width="'.$width.'" height="'.$height.'" codebase="http://webplayer.unity3d.com/download_webplayer-2.x/UnityWebPlayer.cab#version=2,0,0,0">';
		$pu .= '<param name="src" value="Tank Battle.unity3d" />';
		$pu .= '<embed id="UnityEmbed" src="'.$url.'" width="'.$width.'" height="'.$height.'" type="application/vnd.unity" pluginspage="http://www.unity3d.com/unity-web-player-2.x" />';
		$pu .= '</object>';
		echo $pu;
	}

	function play_files($url,$format,$width,$height)
	{
		if(isVideo($format))
			play_video($url, $width, $height);
		else if(isAudio($format))
			play_audio($url, $width, $height);
		else if(isDocument($format))
			play_document($url, $format, $width, $height);
		else if(isImage($format))
			play_image($url,$width,$height);
		else if(isCDF($format))
			play_CDF($url,$width,$height+120);
		else if(isFlash($format))
			play_flash($url, $width, $height);
		else if(isUnity3d($format))
			play_unity3d($url, $width, $height);
	}
//-------------------------------------------------------------------------------------------------------------------

	function output_photopath($filepath,$title,$fileformat)
	{
		if(isVideo($fileformat))
		{
			$photopath="screenshots/".time()."_".$title.".jpg";
			screenshot($filepath, $photopath,8.0,80,60);
		}
		else
		{
			if($fileformat=='doc'||$fileformat=='docx')
				$photopath="screenshots/word.png";
			else if($fileformat=='ppt'||$fileformat=='pptx')
				$photopath="screenshots/ppt.png";
			else if($fileformat=='xls'||$fileformat=='xlsx')
				$photopath="screenshots/excel.png";
			else if($fileformat=='pdf')
				$photopath="screenshots/pdf.png";
			else if($fileformat=='rar'||$fileformat=='zip')
				$photopath="screenshots/rar.png";
			else if(isAudio($fileformat))
				$photopath="screenshots/audio.png";
			else if($fileformat=='cdf')
				$photopath="screenshots/cdf.png";
			else if($fileformat=='psd')
				$photopath="screenshots/photoshop.png";
			else if($fileformat=='txt'||$fileformat=='c'||$fileformat=='cpp'||$fileformat=='cs'||$fileformat=='php'||$fileformat=='h'||$fileformat=='js'||$fileformat=='css'||$fileformat=='java'||$fileformat=='html')
				$photopath="screenshots/text.png";
			else if(isImage($fileformat))
				$photopath=$filepath;
			else if($fileformat=='swf')
				$photopath="screenshots/flash.png";
			else if($fileformat=='unity3d')
				$photopath="screenshots/unity3d.png";
			else
				$photopath="screenshots/common.png";
		}
		return $photopath;
	}

//-------------------------------------------------------------------------------------------------------------------

	function make_flv($video_file, $flv_file, $width, $height)
	{
		if(!is_file($video_file))
		{
			return false;
		}
		$cmd="ffmpeg -i $video_file -ab 128 -acodec libmp3lame -ac 1 -ar 22050 -r 29.97 -qscale 4 -s ".$width."x".$height." -y $flv_file";
		exec($cmd);
		return true;
	}

	function screenshot($video_file, $jpg_file, $pos, $width, $height)
	{
		if(!is_file($video_file))
		{
			return false;
		}
		#$cmd="ffmpeg -i $video_file -y -f image2 -ss $pos -vframes 1 -s $width"."x"."$height $jpg_file";
		#exec($cmd);
		shell_exec("ffmpeg -i $video_file -y -f image2 -ss $pos -vframes 1 -s $width"."x"."$height $jpg_file &");
		return true;
	}

	//$width：实际播放区宽度   $height：实际播放区高度
	function transcode_video($video_file, $flv_file, $width, $height, $fileid)
	{
		extension_loaded('ffmpeg') or die('Error in loading ffmpeg');
		$ffmpeg=new ffmpeg_movie($video_file);
		$_height=$ffmpeg->getFrameHeight();
		$_width=$ffmpeg->getFrameWidth();
		if($_width/$_height > $width/$height){
			$_height=$_height/$_width*$width;
			$_width=$width;
		}
		else{
			$_width=$_width/$_height*$height;
			$_height=$height;
		}
		make_flv($video_file, $flv_file, $_width, $_height);

		$conn=mysql_connect("localhost","root");
		mysql_query("set names GB2312");
		mysql_select_db("test");
		$sql=sprintf("INSERT INTO mediafiles_transcoded_videos(fileid,fileformat,filepath) VALUES ('%d','%s','%s')", $fileid, "flv", $flv_file);
		$result=mysql_query($sql);
		if($result){
				
		}
		else{
				
		}
	}
?>