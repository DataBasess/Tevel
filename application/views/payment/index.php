<div class="pull-right">
	<a href="<?php echo site_url('payment/add'); ?>" class="btn btn-success">Add</a> 
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Pay Money</th>
		<th>Pay Date</th>
		<th>Detail</th>
		<th>Order Id</th>
		<th>Actions</th>
    </tr>
	<?php foreach($payments as $p){ ?>
    <tr>
		<td><?php echo $p['id']; ?></td>
		<td><?php echo $p['pay_money']; ?></td>
		<td><?php echo $p['pay_date']; ?></td>
		<td><?php echo $p['detail']; ?></td>
		<td><?php echo $p['order_id']; ?></td>
		<td>
            <a href="<?php echo site_url('payment/edit/'.$p['id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('payment/remove/'.$p['id']); ?>" class="btn btn-danger">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>