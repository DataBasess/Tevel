<div class="pull-right">
	<a href="<?php echo site_url('order_detail/add'); ?>" class="btn btn-success">Add</a> 
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>Order Id</th>
		<th>Product Id</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Actions</th>
    </tr>
	<?php foreach($order_details as $o){ ?>
    <tr>
		<td><?php echo $o['order_id']; ?></td>
		<td><?php echo $o['product_id']; ?></td>
		<td><?php echo $o['quantity']; ?></td>
		<td><?php echo $o['price']; ?></td>
		<td>
            <a href="<?php echo site_url('order_detail/edit/'.$o['order_id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('order_detail/remove/'.$o['order_id']); ?>" class="btn btn-danger">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>