


<div class="row col-md-11 col-md-offset-0 custyle">
<?php echo form_open('order/edit/'.$order['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="order_date" class="col-md-4 control-label">Order Date</label>
		<div class="col-md-8">
			<input type="date" name="order_date" value="<?php echo ($this->input->post('order_date') ? $this->input->post('order_date') : $order['order_date']); ?>" class="form-control" id="order_date" />

		</div>
	</div>
	<div class="form-group">
		<label for="total" class="col-md-4 control-label">Total</label>
		<div class="col-md-8">
			<input type="text" name="total" value="<?php echo ($this->input->post('total') ? $this->input->post('total') : $order['total']); ?>" class="form-control" id="total" />
		</div>
	</div>
	<div class="form-group">
		<label for="user_id" class="col-md-4 control-label">User Id</label>
		<div class="col-md-8">
			<input type="text" name="user_id" value="<?php echo ($this->input->post('user_id') ? $this->input->post('user_id') : $order['user_id']); ?>" class="form-control" id="user_id" />
		</div>
	</div>
	<div class="form-group">
		<label for="fullname" class="col-md-4 control-label">Fullname</label>
		<div class="col-md-8">
			<input type="text" name="fullname" value="<?php echo ($this->input->post('fullname') ? $this->input->post('fullname') : $order['fullname']); ?>" class="form-control" id="fullname" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-md-4 control-label">Email</label>
		<div class="col-md-8">
			<input type="text" name="email" value="<?php echo ($this->input->post('email') ? $this->input->post('email') : $order['email']); ?>" class="form-control" id="email" />
		</div>
	</div>
	<div class="form-group">
		<label for="phone" class="col-md-4 control-label">Phone</label>
		<div class="col-md-8">
			<input type="text" name="phone" value="<?php echo ($this->input->post('phone') ? $this->input->post('phone') : $order['phone']); ?>" class="form-control" id="phone" />
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-md-4 control-label">Address</label>
		<div class="col-md-8">
			<input type="text" name="address" value="<?php echo ($this->input->post('address') ? $this->input->post('address') : $order['address']); ?>" class="form-control" id="address" />
		</div>
	</div>
	<div class="form-group">
		<label for="district" class="col-md-4 control-label">District</label>
		<div class="col-md-8">
			<input type="text" name="district" value="<?php echo ($this->input->post('district') ? $this->input->post('district') : $order['district']); ?>" class="form-control" id="district" />
		</div>
	</div>
	<div class="form-group">
		<label for="province" class="col-md-4 control-label">Province</label>
		<div class="col-md-8">
			<input type="text" name="province" value="<?php echo ($this->input->post('province') ? $this->input->post('province') : $order['province']); ?>" class="form-control" id="province" />
		</div>
	</div>
	<div class="form-group">
		<label for="postcode" class="col-md-4 control-label">Postcode</label>
		<div class="col-md-8">
			<input type="text" name="postcode" value="<?php echo ($this->input->post('postcode') ? $this->input->post('postcode') : $order['postcode']); ?>" class="form-control" id="postcode" />
		</div>
	</div>
	<div class="form-group">
		<label for="order_status" class="col-md-4 control-label">Order Status</label>
		<div class="col-md-8">
			<select name="order_status" id="order_status" class="form-control input-sm">
				<option value="payments">  Payments </option>
				<option value="pending">  Pending </option>
			</select>
			
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>
	
<?php echo form_close(); ?>

</div>