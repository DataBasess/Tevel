<?php echo validation_errors(); ?>

<?php echo form_open('image/add'); ?>

	<div>Name : <input class="input-file" type="file" name="name" value="<?php echo $this->input->post('name'); ?>" /></div>

	

	<select id="P_id" name="P_id" class="form-control input-sm">
             <?php  foreach ($products as $c) { ?>
              <option value="<?php echo $c['id']; ?>"> <?php echo $c['id']; ?></option>
             <?php } ?>
    </select>
	
	<button type="submit">Save</button>

<?php echo form_close(); ?>