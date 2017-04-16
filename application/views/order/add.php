<div class="row col-md-10 col-md-offset-0 custyle">
<?php echo form_open('order/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="order_date" class="col-md-4 control-label">Order Date</label>
		<div class="col-md-8">
			<input type="text" name="order_date" value="<?php echo $this->input->post('order_date'); ?>" class="form-control" id="order_date" />
		</div>
	</div>
	<div class="form-group">
		<label for="total" class="col-md-4 control-label">Total</label>
		<div class="col-md-8">
			<input type="text" name="total" value="<?php echo $this->input->post('total'); ?>" class="form-control" id="total" />
		</div>
	</div>
	<div class="form-group">
		<label for="user_id" class="col-md-4 control-label">User Id</label>
		<div class="col-md-8">
			<input type="text" name="user_id" value="<?php echo $this->input->post('user_id'); ?>" class="form-control" id="user_id" />
		</div>
	</div>
	<div class="form-group">
		<label for="fullname" class="col-md-4 control-label">Fullname</label>
		<div class="col-md-8">
			<input type="text" name="fullname" value="<?php echo $this->input->post('fullname'); ?>" class="form-control" id="fullname" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-md-4 control-label">Email</label>
		<div class="col-md-8">
			<input type="text" name="email" value="<?php echo $this->input->post('email'); ?>" class="form-control" id="email" />
		</div>
	</div>
	<div class="form-group">
		<label for="phone" class="col-md-4 control-label">Phone</label>
		<div class="col-md-8">
			<input type="text" name="phone" value="<?php echo $this->input->post('phone'); ?>" class="form-control" id="phone" />
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-md-4 control-label">Address</label>
		<div class="col-md-8">
			<input type="text" name="address" value="<?php echo $this->input->post('address'); ?>" class="form-control" id="address" />
		</div>
	</div>
	<div class="form-group">
		<label for="district" class="col-md-4 control-label">District</label>
		<div class="col-md-8">
			<input type="text" name="district" value="<?php echo $this->input->post('district'); ?>" class="form-control" id="district" />
		</div>
	</div>
	<div class="form-group">
		<label for="province" class="col-md-4 control-label">Province</label>
		<div class="col-md-8">
			<input type="text" name="province" value="<?php echo $this->input->post('province'); ?>" class="form-control" id="province" />
		</div>
	</div>
	<div class="form-group">
		<label for="postcode" class="col-md-4 control-label">Postcode</label>
		<div class="col-md-8">
			<input type="text" name="postcode" value="<?php echo $this->input->post('postcode'); ?>" class="form-control" id="postcode" />
		</div>
	</div>
	<div class="form-group">
		<label for="order_status" class="col-md-4 control-label">Order Status</label>
		<div class="col-md-8">
			<input type="text" name="order_status" value="<?php echo $this->input->post('order_status'); ?>" class="form-control" id="order_status" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>

<?php echo form_close(); ?>
</div>