
<?php echo form_open('page/edit/'.$page['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="title" class="col-md-4 control-label">Title</label>
		<div class="col-md-8">
			<input type="text" name="title" value="<?php echo ($this->input->post('title') ? $this->input->post('title') : $page['title']); ?>" class="form-control" id="title" />
		</div>
	</div>
	<div class="form-group">
		<label for="detail" class="col-md-4 control-label">Detail</label>
		<div class="col-md-8">
			<textarea name="detail"><?php echo ($this->input->post('detail') ? $this->input->post('detail') : $page['detail']); ?></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="created" class="col-md-4 control-label">Created</label>
		<div class="col-md-8">
			<input type="text" name="created" value="<?php echo ($this->input->post('created') ? $this->input->post('created') : $page['created']); ?>" class="form-control" id="created" />
		</div>
	</div>
	<div class="form-group">
		<label for="short_detail" class="col-md-4 control-label">Short Detail</label>
		<div class="col-md-8">
			<input type="text" name="short_detail" value="<?php echo ($this->input->post('short_detail') ? $this->input->post('short_detail') : $page['short_detail']); ?>" class="form-control" id="short_detail" />
		</div>
	</div>
	<div class="form-group">
		<label for="sort_item" class="col-md-4 control-label">Sort Item</label>
		<div class="col-md-8">
			<input type="text" name="sort_item" value="<?php echo ($this->input->post('sort_item') ? $this->input->post('sort_item') : $page['sort_item']); ?>" class="form-control" id="sort_item" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>
	
<?php echo form_close(); ?>