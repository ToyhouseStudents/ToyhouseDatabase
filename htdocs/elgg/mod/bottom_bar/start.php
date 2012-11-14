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


function bottombar_init() {
    global $CONFIG;
    elgg_extend_view('css/elgg', 'css/bottom_bar');
    if (isloggedin()) {
	  elgg_extend_view('page/elements/header', 'page_elements/bottom_bar');
    } else {
	 elgg_extend_view('page/elements/header', 'page_elements/clear_cookies');
    }
    
}

register_elgg_event_handler('init', 'system', 'bottombar_init');


?>
