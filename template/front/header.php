
<!DOCTYPE html>
<html lang="en">
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

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js" type="text/javascript"></script>
        <script src="js/respond.min.js" type="text/javascript"></script>
        <![endif]-->
        <title><?php echo $title; ?></title>
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
        <li><a href="<?php echo base_url(); ?>Product/packet">แพ็คเกจ</a></li>
        <li><a href="<?php echo base_url(); ?>cart">แพ็คเกจที่เลือก</a></li>
		
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">For Admin</p></li>
        <li>
          <a href="<?php echo base_url(); ?>user">Login<span class="caret"></span></a>
			
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
