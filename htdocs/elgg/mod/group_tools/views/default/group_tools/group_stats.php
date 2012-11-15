<?php

	if(($group = elgg_get_page_owner_entity()) && ($group instanceof ElggGroup)){
		if($group->isPublicMembership()){
			$status = elgg_echo("groups:open");
			$id = "group_tools_status_open";
		} else {
			$status = elgg_echo("groups:closed");
			$id = "group_tools_status_closed";
		}
		
		$status = ucfirst($status);
		
		?>
		<script type="text/javascript">
			$('div.groups-stats').append("<p id='<?php echo $id; ?>'><?php echo $status;?></p>");
		</script>
		<?php 
	}
