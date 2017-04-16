
<?php echo form_open('order_detail/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="quantity" class="col-md-4 control-label">Quantity</label>
		<div class="col-md-8">
			<input type="text" name="quantity" value="<?php echo $this->input->post('quantity'); ?>" class="form-control" id="quantity" />
		</div>
	</div>
	<div class="form-group">
		<label for="price" class="col-md-4 control-label">Price</label>
		<div class="col-md-8">
			<input type="text" name="price" value="<?php echo $this->input->post('price'); ?>" class="form-control" id="price" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>

<?php echo form_close(); ?>