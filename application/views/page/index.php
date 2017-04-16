<div class="pull-right">
	<a href="<?php echo site_url('page/add'); ?>" class="btn btn-success">Add</a> 
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Title</th>
		<th>Detail</th>
		<th>Created</th>
		<th>Short Detail</th>
		<th>Sort Item</th>
		<th>Actions</th>
    </tr>
	<?php foreach($pages as $p){ ?>
    <tr>
		<td><?php echo $p['id']; ?></td>
		<td><?php echo $p['title']; ?></td>
		<td><?php echo $p['detail']; ?></td>
		<td><?php echo $p['created']; ?></td>
		<td><?php echo $p['short_detail']; ?></td>
		<td><?php echo $p['sort_item']; ?></td>
		<td>
            <a href="<?php echo site_url('page/edit/'.$p['id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('page/remove/'.$p['id']); ?>" class="btn btn-danger">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>