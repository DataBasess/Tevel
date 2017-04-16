
<div class="row col-md-9 col-md-offset-2 custyle">
			<?php echo form_open('product_category/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="codename" class="col-md-4 control-label">Codename</label>
		<div class="col-md-8">
			<input type="text" name="codename" value="<?php echo $this->input->post('codename'); ?>" class="form-control" id="codename" />
		</div>
	</div>
	<div class="form-group">
		<label for="name" class="col-md-4 control-label">Name</label>
		<div class="col-md-8">
			<input type="text" name="name" value="<?php echo $this->input->post('name'); ?>" class="form-control" id="name" />
		</div>
	</div>
	
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>

<?php echo form_close(); ?>
		</div>

		