<?php
	include('../conn.php');
	session_start();
	if(isset($_POST['file'])){		
		$file=$_POST['file'];
		$id=$_POST['id'];
		mysqli_query($conn,"insert into `chat` (chatroomid, file, userid, chat_date) values ('$id', '$file' , '".$_SESSION['id']."', NOW())") or die(mysqli_error());
	}
?>