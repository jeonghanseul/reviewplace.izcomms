<?php
include_once('./_common.php');


?>
<body style="margin:0px;padding:0px;overflow:hidden">
	<iframe src="<?if(!$member['mb_id']) { echo G5_URL.'/bbs/login.php'; } else { echo G5_URL.'/bbs/board.php?bo_table=1team_w'; }?>" frameborder="0" style="overflow:hidden;overflow-x:hidden;overflow-y:hidden;height:100%;width:100%;position:absolute;top:0px;left:0px;right:0px;bottom:0px" height="100%" width="100%"></iframe>
</body>