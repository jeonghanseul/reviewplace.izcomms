<?php
include_once('./_common.php');

$wr_id = $_POST['wr_id'];
$wr_num = $_POST['wr_num'];
if($_POST['type'] == 'status_change') {
   sql_query("update {$_POST[bo_table]} set wr_7 = '{$_POST[wr_7]}' where wr_id= '{$_POST[wr_id]}' " );
//'echo "update {$_POST[bo_table]} set wr_7 = '{$_POST[wr_7]}' where wr_id= '{$_POST[wr_id]}' ";
//exit;
   echo json_encode(Array('result'=>true));
} else if($_POST['type'] == 'up') {
    $sql = " select wr_id, wr_num, wr_subject from g5_write_{$_POST[bo_table]} where wr_is_comment = 0 and wr_num = ".($_POST[wr_num]+1)." limit 1 ";
    $prev = sql_query($sql);
	    
	$prev_row = sql_fetch_array($prev);
	
	if(is_null($prev_row)) {
		exit;
	}

   sql_query("update g5_write_{$_POST[bo_table]} set wr_num = {$wr_num} where wr_id= '{$prev_row[wr_id]}' " );

   sql_query("update g5_write_{$_POST[bo_table]} set wr_num = {$prev_row[wr_num]} where wr_id= '{$wr_id}' " );

} else {
    $sql = " select wr_id, wr_num, wr_subject from g5_write_{$_POST[bo_table]} where wr_is_comment = 0 and wr_num = ".($_POST[wr_num]-1)." limit 1 ";
    $next = sql_query($sql);
	$next_row = sql_fetch_array($next);

	if(is_null($next_row)) {
		exit;
	}

   sql_query("update g5_write_{$_POST[bo_table]} set wr_num = {$wr_num} where wr_id= '{$next_row[wr_id]}' " );
   sql_query("update g5_write_{$_POST[bo_table]} set wr_num = {$next_row[wr_num]} where wr_id= '{$wr_id}' " );
}
?>