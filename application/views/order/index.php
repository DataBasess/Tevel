
<div id="page-wrapper">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Order</h3>
                </div>
    <div class="panel-body">
<div class="row col-md-12 col-md-offset-0 custyle">
<div class="pull-right">
	
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Order Date</th>
		<th>Total</th>
		<!--<th>User Id</th>-->
		<th>Fullname</th>
		<th>Email</th>
		<th>Phone</th>
		<th>Address</th>
		<th>District</th>
		<th>Province</th>
		<th>Postcode</th>
		<th>Order Status</th>
		<th>Actions</th>
    </tr>
	<?php foreach($orders as $o){ ?>
    <tr>
		<td><?php echo $o['id']; ?></td>
		<td><?php echo $o['order_date']; ?></td>
		<td><?php echo $o['total']; ?></td>
		<!--<td><?php echo $o['user_id']; ?></td>-->
		<td><?php echo $o['fullname']; ?></td>
		<td><?php echo $o['email']; ?></td>
		<td><?php echo $o['phone']; ?></td>
		<td><?php echo $o['address']; ?></td>
		<td><?php echo $o['district']; ?></td>
		<td><?php echo $o['province']; ?></td>
		<td><?php echo $o['postcode']; ?></td>
		<td><?php echo $o['order_status']; ?></td>
		<td>
            <a href="<?php echo site_url('order/edit/'.$o['id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('order/remove/'.$o['id']); ?>" class="btn btn-danger">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>

</div>

 </div>
            </div>
            
        </div>
        <!-- /#page-wrapper -->

    </div>