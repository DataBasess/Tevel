<?php echo validation_errors(); ?>

<?php echo form_open('image/edit/'.$image['id']); ?>

	<div>Name : <input type="text" name="name" value="<?php echo ($this->input->post('name') ? $this->input->post('name') : $image['name']); ?>" /></div>
	<div>P Id : <input type="text" name="P_id" value="<?php echo ($this->input->post('P_id') ? $this->input->post('P_id') : $image['P_id']); ?>" /></div>
	
	<button type="submit">Save</button>
	
<?php echo form_close(); ?>