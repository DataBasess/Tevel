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
	<nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo base_url(); ?>Product/Show">หน้าหลัก</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="<?php echo base_url(); ?>Product/Show">แพ็คเกจ</a></li>
        <li><a href="<?php echo base_url(); ?>cart">แพ็คเกจที่เลือก</a></li>
		<li><a href="<?php echo base_url(); ?>">วิธีซื้อ</a></li>
		<li><a href="<?php echo base_url(); ?>">เกี่ยวกับเรา</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">For Admin</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<h1 align="center">Billing Info</h1>
<div class="container">

<div class="panel panel-default">
<div class="panel-heading">Your Packet</div>


<form name="billing" method="post" action="<?php echo base_url().'billing/save_order' ?>" >
    <input type="hidden" name="command" />
	<div align="center">
        
        <table border="0" cellpadding="2px">
        	<tr><td>Order Total:</td><td><strong>$<?php echo number_format($grand_total,2); ?></strong></td></tr>
            <tr><td>Your Name:</td><td><input type="text" name="name" /></td></tr>
            
            <tr><td>Email:</td><td><input type="text" name="email" /></td></tr>
            <tr><td>Phone:</td><td><input type="text" name="phone" /></td></tr>
			<tr><td>Address:</td><td><input type="text" name="address" /></td></tr>
			<tr><td>District:</td><td><input type="text" name="district" /></td></tr>
			<tr><td>Province:</td><td><input type="text" name="province" /></td></tr>
			<tr><td>Postcode:</td><td><input type="text" name="postcode" /></td></tr>
            <tr><td>&nbsp;</td><td><input type="submit" value="Place Order" /></td></tr>


        </table>

		
	</div>

		
</form>



</div>
</div>
</body>
</html>