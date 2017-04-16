
<div class="container">

    <div class="blog-header">
		<?php foreach($products as $rs_pd) { ?>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>Product/Show">หน้าแรก</a></li>
            <li><a href="<?php echo base_url(); ?>product/category/<?php echo $rs_pd['cid']; ?>"><?php echo $rs_pd['cname']; ?></a></li>
            <li class="active"><?php echo $rs_pd['name']; ?></li>
        </ol>
		<?php } ?>
    </div>

    <div class="row">
        <div class="col-sm-9 blog-main">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-5">
                            <a href="<?php echo base_url(); ?>/upload/product/<?php echo $rs_pd['image']; ?>" data-imagelightbox="a">
                                <img src="<?php echo base_url(); ?>/upload/product/<?php echo $rs_pd['image']; ?>" class="img-responsive" alt="Responsive image">
                            </a>
                        </div>
                        <div class="col-sm-7">
                            <h3><?php echo $rs_pd['name']; ?></h3>
                            <dl class="dl-horizontal">
                                <dt>ที่พัก</dt>
                                <dd><?php echo $rs_pd['brandname']; ?></dd>
                                <dt>ราคา</dt>
                                <dd><?php echo number_format($rs_pd['price'], 2); ?></dd>
                            </dl>
                            <hr>
                            <form class="form-inline" role="form" action="<?php echo base_url();?>Cart/add/<?php echo $rs_pd['id'];?>" method="post">
                                <!--<div class="form-group">
                                    <input type="text" class="form-control" id="text2" autocomplete="off" name="qty" placeholder="ใส่จำนวน" data-validation="number" data-validation-allowing="float">
                                </div> -->
                                <button type="submit" class="btn btn-success">หยิบใส่ตะกร้า</button>
                            </form>
                        </div>
                    </div>
                    <div class="row" style="font-size: 14px;">
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li role="presentation" class="active"><a href="#" onclick="return false;">รายละเอียด</a></li>
                            </ul>
                            <?php echo $rs_pd['detail']; ?>
                        </div>
                        <div class="col-sm-12 ">
                                    <iframe src="<?php echo $rs_pd['map']; ?>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen>
                                        
                                    </iframe>

                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.blog-main -->
        <div class="col-sm-3 blog-sidebar">
            <div class="panel panel-primary">
                <!-- Default panel contents -->
                <div class="panel-heading">สินค้าที่เกี่ยวข้อง</div>
                <!-- List group -->
                <ul class="list-group">
                    <?php foreach($category as $rs_ps) { ?>
                        <li class="list-block">
                            <a href="<?php echo base_url(); ?>/product/view/<?php echo $rs_ps['id']; ?>">
                                <img src="<?php echo base_url(); ?>/upload/product/<?php echo $rs_ps['image']; ?>" class="img-responsive" alt="Responsive image">
                                <?php echo $rs_ps['pname']; ?>
                                (<?php echo $rs_ps['price']; ?> บาท)
                            </a>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div><!-- /.blog-sidebar -->

    </div><!-- /.row -->

</div><!-- /.container -->
<script type="text/javascript">
    $(document).ready(function () {
        $('a').imageLightbox();
        $.validate();
    });
</script>







<?php


/*
 * footer***********************************************************************
 */
require 'template/front/footer.php';
/*
 * footer***********************************************************************
 */
