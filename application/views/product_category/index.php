

        <div id="page-wrapper">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Category</h3>
                </div>
                <div class="panel-body">
<!--//container -->
    <div class="row col-md-9 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
    <a href="<?php echo base_url(); ?>product_category/add" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>
        <tr>
		<th>ID</th>
		<th>Codename</th>
		<th>Name</th>
		<th>Created</th>
		<th>Actions</th>
    </tr>
    </thead>
        <?php foreach($product_categories as $p){ ?>
    <tr>
		<td><?php echo $p['id']; ?></td>
		<td><?php echo $p['codename']; ?></td>
		<td><?php echo $p['name']; ?></td>
		<td><?php echo $p['created']; ?></td>
		<td>
            <a href="<?php echo site_url('product_category/edit/'.$p['id']); ?>" class="btn btn-info">Edit</a> 
            <a href="<?php echo site_url('product_category/remove/'.$p['id']); ?>" class="btn btn-danger">Delete</a>
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
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>