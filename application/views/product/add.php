<div class="row col-md-9 col-md-offset-2 custyle">
<?php echo form_open('product/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="name" class="col-md-4 control-label">Name</label>
		<div class="col-md-8">
			<input type="text" name="name" value="<?php echo $this->input->post('name'); ?>" class="form-control" id="name" />
		</div>
	</div>
	<div class="form-group">
		<label for="price" class="col-md-4 control-label">Price</label>
		<div class="col-md-8">
			<input type="text" name="price" value="<?php echo $this->input->post('price'); ?>" class="form-control" id="price" />
		</div>
	</div>
	<div class="form-group">
		<label for="brandname" class="col-md-4 control-label">Hotel</label>
		<div class="col-md-8">
			<input type="text" name="brandname" value="<?php echo $this->input->post('brandname'); ?>" class="form-control" id="brandname" />
		</div>
	</div>
	<div class="form-group">
		<label for="detail" class="col-md-4 control-label">Detail</label>
		<div class="col-md-8">
			<!--<textarea name="detail" class="form-control" id="detail"><?php echo $this->input->post('detail'); ?></textarea>
			-->
			<textarea name="detail" id="detail" class="form-control" rows="20" required="required">
				<?php echo $this->input->post('detail'); ?>
			</textarea>
		</div>
	</div>
	
	<div class="form-group">
  		<label class="col-md-4 control-label" for="Upload photo">Image</label>
  		<div class="col-md-4">
    	<input id="image" name="image" value="<?php echo $this->input->post('image'); ?>"  class="input-file" type="file">
  		</div>
	</div>

    

	
	<div class="form-group">
		<label for="product_categorie_id" class="col-md-4 control-label"> Categorie</label>
		<div class="col-md-8">
			<select id="product_categorie_id" name="product_categorie_id" class="form-control input-sm">
             <?php  foreach ($product_categories as $c) { ?>
              <option value="<?php echo $c['id']; ?>"><?php echo $c['name']; ?></option>
             <?php } ?>
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