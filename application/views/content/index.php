<div class="pull-right">
	<a href="<?php echo site_url('content/add'); ?>" class="btn btn-success">Add</a> 
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Codename</th>
		<th>Topic</th>
		<th>Detail</th>
		<th>Created</th>
		<th>Actions</th>
    </tr>
	<?php foreach($contents as $c){ ?>
    <tr>
		<td><?php echo $c['id']; ?></td>
		<td><?php echo $c['codename']; ?></td>
		<td><?php echo $c['topic']; ?></td>
		<td><?php echo $c['detail']; ?></td>
		<td><?php echo $c['created']; ?></td>
		<td>
            <a href="<?php echo site_url('content/edit/'.$c['id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('content/remove/'.$c['id']); ?>" class="btn btn-danger">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>