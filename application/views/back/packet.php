        <div id="page-wrapper">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Packet</h3>
                </div>
    <div class="panel-body">
<!--//container -->
    <div class="row col-md-9 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
    <a href="<?php echo base_url(); ?>product/add" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>
        <tr>
            <th>ID</th>
            <th>name</th>
            <th>price</th>
            <th>brandname</th>
            <th>created</th>
            <th>categorie_id</th>
            <th class="text-center">Action</th>
        </tr>
    </thead>
        <?php foreach($products as $rs_pc) { ?>
            <tr>
                <td><?php echo $rs_pc['id']; ?></td>
                <td><?php echo $rs_pc['name']; ?></td>
                <td><?php echo $rs_pc['price']; ?></td>
                <td><?php echo $rs_pc['brandname']; ?></td>
                <td><?php echo $rs_pc['created']; ?></td>
                <td><?php echo $rs_pc['product_categorie_id']; ?></td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="<?php echo base_url(); ?>product/edit/<?php echo $rs_pc['id']; ?>"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="<?php echo base_url(); ?>product/remove/<?php echo $rs_pc['id']; ?>" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
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