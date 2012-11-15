<?php

        /**
         * Facebook-esque bottom bar
         *
         * @package bottom_bar
         * @author Jay Eames - Sitback
         * @link http://sitback.dyndns.org
         * @copyright (c) Jay Eames 2009
         * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU Public License version 2
         */

         //gatekeeper();

	 //$river = elgg_view_river_items($_SESSION['user']->guid, 0, 'friend', '', '', '',10,0,0,false) . "</div>";
	
         // Replacing callback calls in the nav with something meaningless
 

	 $chatEnabled = (get_plugin_setting("allow_messaging", "bottom_bar") != "false" && get_plugin_usersetting("chat_enabled",$_SESSION['user']->guid,"bottom_bar") != "false");
	 $soundEnabled = (get_plugin_setting("sound_enabled", "bottom_bar") != "false") && (get_plugin_setting("allow_sounds", "bottom_bar") != "false");
	 $showFriendIcon = get_plugin_usersetting("friends_icons",$_SESSION['user']->guid,"bottom_bar") != "false";
	 $refreshRate = get_plugin_setting("refresh_rate", "bottom_bar") * 1000;
	 if (!$refreshRate) { $refreshRate = 30000; }

	
?>


<?php if ($chatEnabled) { ?>
<div id="bb_chat_toolbar">
<div id='bb_chat'>
  <div id='bb_friends_top'>
    <table width=100%>
      <tr>
        <td style='border-bottom: solid 1px #aaaabb'><b><?php echo elgg_echo('bbar:bar:friends'); ?></b></td>
        <td style='border-bottom: solid 1px #aaaabb; width: 10px;' align=right style='cursor: pointer;' onClick='$("#bb_chat").slideToggle("normal");'><img src='<?php echo $CONFIG->wwwroot; ?>mod/bottom_bar/graphics/icons/minimize.gif' alt='-'></td>
     </tr>
    </table>
  </div>

  <div id='bb_friends_main'>
<?php
	$friends = $_SESSION['user']->getFriends("", 1000);
	$friends_online = 0;
	if (count($friends) > 0) {
	  echo "<table width=100% id='bb_friendslist'>";
	  foreach ($friends as $friend) {
	    $icon = $friend->getIcon('topbar');
	    if ($friend->last_action < time() - 600 || get_plugin_usersetting("chat_enabled",$friend->guid,"bottom_bar") == "false") {
		// Consider them offline if no action for 10 mins ..

	    } elseif ($friend->last_action < time() - 300) {
 	        echo "<tr>";
		if ($showFriendIcon) echo "<td width=10><img src='$icon'></td>";
		echo "<td style='padding-left: 5px;'><a href='#' onClick='addChat(\"" . $friend->guid . "\", \"" . $friend->name . "\");'>" . $friend->name . "</a></td><td width=10 style='padding-top: 3px;'>";
		echo "<img src='" . $CONFIG->wwwroot . "mod/bottom_bar/graphics/icons/inactive.png'>";
		$friends_online ++;
	    } else {
 	        echo "<tr>";
		if ($showFriendIcon) echo "<td width=10><img src='$icon'></td>";
		echo "<td style='padding-left: 5px;'><a href='#' onClick='addChat(\"" . $friend->guid . "\", \"" . $friend->name . "\");'>" . $friend->name . "</a></td><td width=10 style='padding-top: 3px;'>";
		echo "<img src='" . $CONFIG->wwwroot . "mod/bottom_bar/graphics/icons/online_s.png'>";
		$friends_online ++;
	    }
	    echo "</td></tr>";
	  }
	  echo "</table>";
	}

	if ($friends_online == 0) {
	  echo elgg_echo('bbar:bar:noneonline'); 
	}
?>
  </div>
</div>
<?php } ?>

<div id='bb_container'>
  <div id='bb_bar'>
    <table width=100% height=100% style='border-top: solid 1px #ffffff;' cellpadding=0 cellspacing=0>
      <tr>
       
	  
	</td>


	<td id="bb_chat_list"><div id="bb_chat_list_area"></div></td>
	<?php if ($chatEnabled) { ?>
        <td width=180px id='bb_friendslist_button'><table id='bb_friends_bartitle'><tr><td><img src='<?php echo $CONFIG->wwwroot; ?>mod/bottom_bar/graphics/icons/user_online.png'></td><td style='padding-top: 3px;'>&nbsp;<?php echo elgg_echo('bbar:bar:friends'); ?> (<span id='bb_friends_count'><?php echo $friends_online; ?></span>)</td></tr></table></td>
	<?php } ?>
        <td width=25px id='bb_newposts_button'></td>
      </tr>
    </table>
  </div>
</div>

</div>

<script>

<?php require_once("functions.php"); ?>
  

    <?php if ($chatEnabled) { ?>
    $("#bb_friendslist_button").click(function () {
      $("#newPosts:visible   ").slideToggle("normal");
      $("#bb_chat").slideToggle("normal");
    });    
    <?php } ?>

    initPage();
</script>
