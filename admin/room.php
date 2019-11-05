		<div class="col-lg-12">
            <div class="panel panel-default" style="height:50px;">
				<span style="font-size:20px; margin-left:10px; position:relative; top:13px;">Chat Room: <strong><?php  echo $chatrow['chat_name']; ?></strong></span>
				<div class="pull-right" style="margin-right:10px; margin-top:7px;">
					<span id="user_details" style="font-size:18px; position:relative; top:2px;"><strong>Members: </strong><span class="badge"><?php echo mysqli_num_rows($cmem); ?></span></span>
					<a href="#add_member" data-toggle="modal" class="btn btn-success">Add Member</a>
					<a href="#kick_member" data-toggle="modal" class="btn btn-danger">Kick Member</a>
					<a href="#clear_message" data-toggle="modal" class="btn btn-info" ><span class="glyphicon glyphicon-remove"></span> Clear Message</a>
					<a href="index.php" class="btn btn-primary"><span class="glyphicon glyphicon-arrow-left"></span> Back</a>
				</div>
				<div class="showme hidden" style="position: absolute; left:570px; top:20px;">
					<div class="well">
						<strong>Room Member/s:</strong>
						<div style="height: 10px;"></div>
					<?php
						$rm=mysqli_query($conn,"select * from chat_member left join `user` on user.userid=chat_member.userid where chatroomid='$id'");
						while($rmrow=mysqli_fetch_array($rm)){
							?>
							<span>
							<?php
								$creq=mysqli_query($conn,"select * from chatroom where chatroomid='$id'");
								$crerow=mysqli_fetch_array($creq);
								
								if ($crerow['userid']==$rmrow['userid']){
									?>
										<span class="glyphicon glyphicon-user"></span>
									<?php
								}
								
							?>
							<?php echo $rmrow['uname']; ?></span><br>
							<?php
						}
						
					?>
						
					</div>
				</div>
			</div>
			<div>
				<div class="panel panel-default" style="height: 400px;">
					<div style="height:7px;"></div>
					<span style="font-size:25px; margin-left:11px; ">Welcome to Chatroom</span><br>
					<div style="height:30px;"></div>
					<div id="chat_area" style="margin-left:5px; max-height:320px; overflow-y:scroll;">
					</div>
				</div>
				<div style="height:4px;"></div>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Type message..." id="chat_msg">
					<span class="input-group-btn">
					<button class="btn btn-primary" value="<?php echo $id; ?>">
					<span class="glyphicon glyphicon-camera" data-toggle="modal" data-target="#file" > Photo
					<button class="btn btn-success" type="submit" id="send_msg" value="<?php echo $id; ?>">
					<span class="glyphicon glyphicon-comment"></span> Send
					</button>
					</span>
				</div>
				
			</div>			
		</div>