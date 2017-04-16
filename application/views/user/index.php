        <div id="page-wrapper">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Users</h3>
                </div>
    <div class="panel-body">
<!--//container -->
    <div class="row col-md-12 col-md-offset-0 custyle">

<table class="table table-striped table-bordered">
<a href="<?php echo base_url(); ?>User/add" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>
    <tr>
		<th>ID</th>
		<th>Firstname</th>
		<th>Lastname</th>
		<th>Username</th>
		<th>Password</th>
		<th>Email</th>
		<th>Phone</th>
		<th>Address</th>
		<th>District</th>
		<th>Province</th>
		<th>Postcode</th>
		<th>Created</th>
		<th>User Type</th>
		<th>Actions</th>
    </tr>
	<?php foreach($users as $u){ ?>
    <tr>
		<td><?php echo $u['id']; ?></td>
		<td><?php echo $u['firstname']; ?></td>
		<td><?php echo $u['lastname']; ?></td>
		<td><?php echo $u['username']; ?></td>
		<td><?php echo $u['password']; ?></td>
		<td><?php echo $u['email']; ?></td>
		<td><?php echo $u['phone']; ?></td>
		<td><?php echo $u['address']; ?></td>
		<td><?php echo $u['district']; ?></td>
		<td><?php echo $u['province']; ?></td>
		<td><?php echo $u['postcode']; ?></td>
		<td><?php echo $u['created']; ?></td>
		<td><?php echo $u['user_type']; ?></td>
		<td>
            <a href="<?php echo site_url('user/edit/'.$u['id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('user/remove/'.$u['id']); ?>" class="btn btn-danger">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>

 </div>
<!--//container -->
                </div>
            </div>
            
        </div>
        <!-- /#page-wrapper -->

    </div>

		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
 		<script src="Hello World"></script>
	</body>
</html>

