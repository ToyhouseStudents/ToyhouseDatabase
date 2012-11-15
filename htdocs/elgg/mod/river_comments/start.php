<?php
	/**
	* river_comments
	*
	* @author Pedro Prez
	* @link http://community.elgg.org/pg/profile/pedroprez
	* @copyright (c) Keetup 2010
	* @link http://www.keetup.com/
	* @license GNU General Public License (GPL) version 2
	*/

	global $ASKQUESTION;

	function river_comments_init() {
		global $CONFIG;
		global $ASKQUESTION;
		
		$ASKQUESTION = false;
		
		//Page Handler
		elgg_register_page_handler('river_comments','river_comments_page_handler');
		
		//Extend css view
		elgg_extend_view('css/elgg', 'river_comments/css');
		
		//Elastic Plugin
		elgg_extend_view('page/elements/footer', 'river_comments/footer', 400);
		
		//Extend js view on riverdashboard
		elgg_extend_view('page/elements/footer', 'river_comments/js', 450);
		elgg_extend_view('riverdashboard/js', 'river_comments/riverdashboardjs');
		
		//View for river actions
		elgg_extend_view('river/item/actions', 'river_comments/item_action');
		elgg_extend_view('river/elements/responses', 'river/responses');
		//Print the plugin version
		elgg_extend_view('metatags', 'river_comments/version');
		
		if (isadminloggedin()) {
			elgg_extend_view('page_elements/header_contents', 'river_comments/question/content');
		}
		
		//Actions
		$actions_path = elgg_get_plugins_path() . "river_comments/actions/river_comments";
	elgg_register_action("river_comments/add", "$actions_path/add.php");
	elgg_register_action("river_comments/delete", "$actions_path/delete.php");
	
	
	
		
	}
	
	function river_comments_page_handler($page) {
		global $CONFIG;
		if (isset($page[0])) {
			switch($page[0]) {
				case "admin":
					!@include_once(dirname(__FILE__) . "/admin.php");
					return false;
          			break;
          		case "allcomments":
					!@include_once(dirname(__FILE__) . "/allcomments.php");
					return false;
          			break;	
			}
		}
	}
	
	function river_comments_setup() {
		global $CONFIG;
		global $activity_widget;
		if (elgg_get_context()=='admin') {
    		add_submenu_item(elgg_echo("river_comments:admin"), $CONFIG->wwwroot . "pg/river_comments/admin" );
		}
		
//		For milestone v2		
//		extend_view('river/user/default/profileiconupdate', 'river_comments/comments');
//		extend_view('friends/river/create', 'river_comments/comments');
//		extend_view('river/sitemessage/create', 'river_comments/comments');

		$priority = 600;	
		
	
		/*
		 * Out of the box mods
		*/
		if (get_plugin_setting('show_thewire', 'river_comments') != 'no') {
			elgg_extend_view('river/object/thewire/create', 'river_comments/comments', $priority);
		}
		if (get_plugin_setting('show_blog', 'river_comments') != 'no') {
			elgg_extend_view('river/object/blog/create', 'river_comments/comments', $priority);
		}
		if (get_plugin_setting('show_page', 'river_comments') != 'no') {
			elgg_extend_view('river/object/page/create', 'river_comments/comments', $priority);
		}
		if (get_plugin_setting('show_topic', 'river_comments') != 'no') {
			elgg_extend_view('river/forum/topic/create', 'river_comments/comments', $priority);
		}
		
		/*
		 * Third party mods
		*/
		//Tidypics
		if (is_plugin_enabled('tidypics') && get_plugin_setting('show_tidypics_image', 'river_comments') != 'no') {
			elgg_extend_view('river/object/image/create', 'river_comments/comments', $priority);
		}
		if (is_plugin_enabled('tidypics') && get_plugin_setting('show_tidypics_album', 'river_comments') != 'no') {
			elgg_extend_view('river/object/album/create', 'river_comments/comments', $priority);
		}
		//iZap Videos
		if (is_plugin_enabled('izap_videos') && get_plugin_setting('show_izap_videos', 'river_comments') != 'no') {
			elgg_extend_view('river/object/izap_videos/create', 'river_comments/comments', $priority);
		}
		//Event Calendar
		if (is_plugin_enabled('event_calendar') && get_plugin_setting('show_event_calendar', 'river_comments') != 'no') {
			elgg_extend_view('river/object/event_calendar/create', 'river_comments/comments', $priority);
		}
		
	}
	
	//Generate url for accept action on elgg 1.7
	if(!is_callable('url_compatible_mode')) {
	    function url_compatible_mode($hook = '?') {
	    	$now = time();
			$query[] = "__elgg_ts=" . $now;
			$query[] = "__elgg_token=" . generate_action_token($now);
			$query_string = implode("&", $query);
			return $hook . $query_string;
	    }
	}
	
	function river_comments_question_for_ping() {
		global $ASKQUESTION;
		$ASKQUESTION = true;
	}
	
	function river_comments_get_version($humanreadable = false){
	    if (include(dirname(__FILE__) . "/version.php")) {
			return (!$humanreadable) ? $version : $release;
		}
		return FALSE;
    }
	
	elgg_register_event_handler('init','system','river_comments_init');
	elgg_register_event_handler('pagesetup','system','river_comments_setup');