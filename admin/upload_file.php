<?php
	include('session.php');
	
	$fileInfo = PATHINFO($_FILES["image"]["name"]);
	$file_name = $_FILES['image']['name'];

	if (empty($_FILES["image"]["name"])){
		$location=$srow['file'];
		?>
			<script>
				window.alert('Uploaded file is empty!');
				window.history.back();
			</script>
		<?php
	}
	else{
		if ($fileInfo['extension'] == "jpg" OR $fileInfo['extension'] == "png") {
			$newFilename = $fileInfo['filename'] . "_" . time() . "." . $fileInfo['extension'];
			move_uploaded_file($_FILES["image"]["tmp_name"], "../upload/" . $newFilename);
			$location = "upload/" . $newFilename;

			mysqli_query($conn,"insert into `chat` (chatroomid, file, userid, chat_date) values ('".$_SESSION['cid']."', '$location' , '".$_SESSION['id']."', NOW())") or die(mysqli_error());
			?>
				<script>
					window.history.back();
				</script>
			<?php
		}
		else{
			?>
				<script>
					window.alert('file not sent. Please upload files only!');
					window.history.back();
				</script>
			<?php
		}
	}
	
	

?>