<div class="row col-md-9 col-md-offset-2 custyle">
<?php echo form_open('user/edit/'.$user['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="firstname" class="col-md-4 control-label">Firstname</label>
		<div class="col-md-8">
			<input type="text" name="firstname" value="<?php echo ($this->input->post('firstname') ? $this->input->post('firstname') : $user['firstname']); ?>" class="form-control" id="firstname" />
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-md-4 control-label">Lastname</label>
		<div class="col-md-8">
			<input type="text" name="lastname" value="<?php echo ($this->input->post('lastname') ? $this->input->post('lastname') : $user['lastname']); ?>" class="form-control" id="lastname" />
		</div>
	</div>
	<div class="form-group">
		<label for="username" class="col-md-4 control-label">Username</label>
		<div class="col-md-8">
			<input type="text" name="username" value="<?php echo ($this->input->post('username') ? $this->input->post('username') : $user['username']); ?>" class="form-control" id="username" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-md-4 control-label">Password</label>
		<div class="col-md-8">
			<input type="text" name="password" value="<?php echo ($this->input->post('password') ? $this->input->post('password') : $user['password']); ?>" class="form-control" id="password" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-md-4 control-label">Email</label>
		<div class="col-md-8">
			<input type="text" name="email" value="<?php echo ($this->input->post('email') ? $this->input->post('email') : $user['email']); ?>" class="form-control" id="email" />
		</div>
	</div>
	<div class="form-group">
		<label for="phone" class="col-md-4 control-label">Phone</label>
		<div class="col-md-8">
			<input type="text" name="phone" value="<?php echo ($this->input->post('phone') ? $this->input->post('phone') : $user['phone']); ?>" class="form-control" id="phone" />
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-md-4 control-label">Address</label>
		<div class="col-md-8">
			<input type="text" name="address" value="<?php echo ($this->input->post('address') ? $this->input->post('address') : $user['address']); ?>" class="form-control" id="address" />
		</div>
	</div>
	<div class="form-group">
		<label for="district" class="col-md-4 control-label">District</label>
		<div class="col-md-8">
			<input type="text" name="district" value="<?php echo ($this->input->post('district') ? $this->input->post('district') : $user['district']); ?>" class="form-control" id="district" />
		</div>
	</div>
	<div class="form-group">
		<label for="province" class="col-md-4 control-label">Province</label>
		<div class="col-md-8">
			<input type="text" name="province" value="<?php echo ($this->input->post('province') ? $this->input->post('province') : $user['province']); ?>" class="form-control" id="province" />
		</div>
	</div>
	<div class="form-group">
		<label for="postcode" class="col-md-4 control-label">Postcode</label>
		<div class="col-md-8">
			<input type="text" name="postcode" value="<?php echo ($this->input->post('postcode') ? $this->input->post('postcode') : $user['postcode']); ?>" class="form-control" id="postcode" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="user_type" class="col-md-4 control-label">User Type</label>
		<div class="col-md-8">
			<input type="text" name="user_type" value="<?php echo ($this->input->post('user_type') ? $this->input->post('user_type') : $user['user_type']); ?>" class="form-control" id="user_type" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>
	
<?php echo form_close(); ?>
</div>