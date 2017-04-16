<table border="1" width="100%">
<a href="<?php echo base_url(); ?>Image/add" class="btn btn-primary btn-xs pull-right"><b>+</b> Add Image</a>
    <tr>
		<th>ID</th>
		<th>Name</th>
		<th>P Id</th>
		<th>Actions</th>
    </tr>
	<?php foreach($images as $i){ ?>
    <tr>
		<td><?php echo $i['id']; ?></td>
		<td><?php echo $i['name']; ?></td>
		<td><?php echo $i['P_id']; ?></td>
		<td>
            <a href="<?php echo site_url('image/edit/'.$i['id']); ?>">Edit</a> | 
            <a href="<?php echo site_url('image/remove/'.$i['id']); ?>">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>