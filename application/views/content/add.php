
<?php echo form_open('content/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="codename" class="col-md-4 control-label">Codename</label>
		<div class="col-md-8">
			<input type="text" name="codename" value="<?php echo $this->input->post('codename'); ?>" class="form-control" id="codename" />
		</div>
	</div>
	<div class="form-group">
		<label for="topic" class="col-md-4 control-label">Topic</label>
		<div class="col-md-8">
			<input type="text" name="topic" value="<?php echo $this->input->post('topic'); ?>" class="form-control" id="topic" />
		</div>
	</div>
	<div class="form-group">
		<label for="detail" class="col-md-4 control-label">Detail</label>
		<div class="col-md-8">
			<textarea name="detail" class="form-control" id="detail"><?php echo $this->input->post('detail'); ?></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="created" class="col-md-4 control-label">Created</label>
		<div class="col-md-8">
			<input type="text" name="created" value="<?php echo $this->input->post('created'); ?>" class="form-control" id="created" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>

<?php echo form_close(); ?>