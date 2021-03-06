<div class="container">
<div class="pull-right">
	<a href="<?php echo site_url('product/add'); ?>" class="btn btn-success">Add</a> 
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Name</th>
		<th>Price</th>
		<th>Brandname</th>
		<!-- <th>Detail</th> -->
		<th>Image</th>
		<th>Created</th>
		<th>Product Categorie Id</th>
		<th>Actions</th>
    </tr>
	<?php foreach($products as $p){ ?>
    <tr>
		<td><?php echo $p['id']; ?></td>
		<td><?php echo $p['name']; ?></td>
		<td><?php echo $p['price']; ?></td>
		<td><?php echo $p['brandname']; ?></td>
		<!-- <td><?php echo $p['detail']; ?></td> -->
		<td><?php echo $p['image']; ?></td>
		<td><?php echo $p['created']; ?></td>
		<td><?php echo $p['product_categorie_id']; ?></td>
		<td>
            <a href="<?php echo site_url('product/edit/'.$p['id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('product/remove/'.$p['id']); ?>" class="btn btn-danger">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>

</div>
<?php require 'template/front/footer.php'; ?>