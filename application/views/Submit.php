<?php
$grand_total = 0;

if ($cart = $this->cart->contents()):
	foreach ($cart as $item):
		$grand_total = $grand_total + $item['subtotal'];
	endforeach;
endif;
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="language" content="en" />
        <link rel="stylesheet" href="<?php echo base_url(); ?>/bootstrap/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="<?php echo base_url(); ?>/bootstrap/css/bootstrap-theme.min.css" type="text/css" />
        <link rel="stylesheet" href="<?php echo base_url(); ?>/css/blog.css" type="text/css" />
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

        <script type="text/javascript" src="<?php echo base_url(); ?>/js/jquery.1.11.1.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>/js/imagelightbox.min.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>/js/jquery.form-validator.min.js"></script>


<title>Billing Info</title>
</head>
<style>
            /* CSS used here will be applied after bootstrap.css */
            body { 
                background: url('<?php echo base_url(); ?>PT/0003.jpg') no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }

            .panel-default {
                opacity: 0.9;
                margin-top:30px;
            }
            .form-group.last {
                margin-bottom:0px;
            }
			h1 {
				color: White;
				}
			h4 {
				color: White;
				}

			#imagelightbox
				{
					position: fixed;
					z-index: 9999;

					-ms-touch-action: none;
					touch-action: none;
				}



	</style>
<body>
<h1 align="center">Billing Info</h1>
<div class="container">
	<div class="row">
		<h2>Input Validation + Colorful Input Groups</h2>
	</div>
    <div class="panel panel-default">
    <div class="panel-heading">Your Bill</div>
    <div class="row">
    	
        <div class="col-sm-offset-4 col-sm-4">
        	
            <form name="billing" method="post" action="<?php echo base_url()?>billing/save_order ">
				<div class="form-group">
					<label for="validate-text">Order Total :$<?php echo number_format($grand_total,2); ?></label>
        			<label for="validate-text">Bath</label>
					<div class="input-group">
						<input type="text" class="form-control" name="name" id="name" placeholder="name" required>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
				
				<div class="form-group">
        			<label for="validate-email">Email</label>
					<div class="input-group" data-validate="email">
						<input type="text" class="form-control" name="email" id="email" placeholder="Email" required>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
    			<div class="form-group">
        			<label for="validate-phone">Phone</label>
					<div class="input-group" data-validate="phone">
						<input type="text" class="form-control" name="phone" id="phone" placeholder="(814) 555-1234" required>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
        		<div class="form-group">
        			<label for="validate-length">Address</label>
					<div class="input-group" data-validate="length" data-length="5">
						<textarea type="text" class="form-control" name="address" id="address" placeholder="Address" required></textarea>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
                <div class="form-group">
        			<label for="validate-length">district</label>
					<div class="input-group" data-validate="length" data-length="5">
						<input type="text" class="form-control" name="district" id="district" placeholder="district" required>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
				<div class="form-group">
        			<label for="validate-length">province</label>
					<div class="input-group" data-validate="length" data-length="5">
						<input type="text" class="form-control" name="province" id="province" placeholder="province" required>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
				<div class="form-group">
        			<label for="validate-length">postcode</label>
					<div class="input-group" data-validate="length" data-length="5">
						<input type="text" class="form-control" name="postcode" id="postcode" placeholder="10000" required>
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-remove"></span></span>
					</div>
				</div>
               
				<a  href="<?php echo base_url(); ?>Billing/save_order"" class="btn btn btn-primary col-xs-12" role="button" aria-pressed="true">ยืนยัน</a>
            </form>
        </div>
        </div>
    	
    </div>
</div>



</body>
</html>