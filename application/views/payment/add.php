
<?php echo form_open('payment/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="pay_money" class="col-md-4 control-label">Pay Money</label>
		<div class="col-md-8">
			<input type="text" name="pay_money" value="<?php echo $this->input->post('pay_money'); ?>" class="form-control" id="pay_money" />
		</div>
	</div>
	<div class="form-group">
		<label for="pay_date" class="col-md-4 control-label">Pay Date</label>
		<div class="col-md-8">
			<input type="text" name="pay_date" value="<?php echo $this->input->post('pay_date'); ?>" class="form-control" id="pay_date" />
		</div>
	</div>
	<div class="form-group">
		<label for="detail" class="col-md-4 control-label">Detail</label>
		<div class="col-md-8">
			<input type="text" name="detail" value="<?php echo $this->input->post('detail'); ?>" class="form-control" id="detail" />
		</div>
	</div>
	<div class="form-group">
		<label for="order_id" class="col-md-4 control-label">Order Id</label>
		<div class="col-md-8">
			<input type="text" name="order_id" value="<?php echo $this->input->post('order_id'); ?>" class="form-control" id="order_id" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>

<?php echo form_close(); ?>