<?php
	include('../conn.php');
	
	if (isset($_POST['clear'])){
		$id=$_POST['id'];
		
		mysqli_query($conn,"delete from `file` where chatid='$id'");

	}
?>