
<div class="container">

    <div class="blog-header">
		<div class="Exam">
			<iframe width="640" height="360" src="https://www.youtube.com/embed/vcTVJxnm3LQ" frameborder="0" allowfullscreen></iframe>
		</div>
        <h1 class="blog-title">Tavel Thailand</h1>
        <h4 class="lead blog-description">จะขึ้นเขา ล่องใต้ ไปเที่ยวทะเล ดูป่า แวะน้ำตก เยี่ยมชมวัดทำบุญ หรือตระเวนกินของอร่อยในทุกภาค 

จะไปคนเดียว ไปเป็นคู่ หรือลองไปกับคนที่ไม่รู้จักบ้าง จะไปแบบไหนก็เก๋ไก๋ไม่เหมือนกัน </h4>
    </div>
    <div class="row">
        <div class="col-sm-3 blog-sidebar">
            <div class="panel panel-primary">
                <!-- Default panel contents -->
                <div class="panel-heading">ประเภทแพ็คเกจ</div>
                <!-- List group -->
                <ul class="list-group">
                    <?php
                    
					foreach($category as $rs_cat){
                        ?>
                        <li class="list-block"><a href="<?php echo base_url(); ?>Product/category/<?php echo $rs_cat['id']; ?>"><?php echo $rs_cat['name']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </div><!-- /.blog-sidebar -->
        <div class="col-sm-9 blog-main">
            <div class="panel panel-default">
                <div class="panel-body">
					<div class="panel-heading">แพ็คเกจท่องเที่ยว</div>
                    <div class="row">
                        <?php foreach($products as $rs_pc) { ?>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail" style="height: 420px!important;">
                                    <a href="<?php echo base_url(); ?>product/view/<?php echo $rs_pc['id']; ?>">
                                        <img src="<?php echo base_url(); ?>/upload/product/<?php echo $rs_pc['image']; ?>" alt="<?php echo $rs_pc['pname']; ?>">
                                    </a>
                                    <div class="caption">
                                        <a href="<?php echo base_url();; ?>product/view/<?php echo $rs_pc['id']; ?>"  style="font-size: 13px;"><?php echo $rs_pc['pname']; ?></a>
                                        <p  style="font-size: 13px;font-weight: bold;color: red;">ราคา : <?php echo number_format($rs_pc['price']); ?> บาท</p>
                                        <p  style="font-size: 13px;">หมวดหมู่ : <?php echo $rs_pc['cname']; ?></p>
                                        <p>
                                            <a href="<?php echo base_url(); ?>product/view/<?php echo $rs_pc['id']; ?>" class="btn btn-default" role="button">รายละเอียด</a>
                                        </p>
                                    </div>
                                    
                                    <form class="form-inline" role="form" action="<?php echo base_url();?>Cart/add/<?php echo $rs_pc['id'];?>" method="post">
                                <!--<div class="form-group">
                                    <input type="text" class="form-control" id="text2" autocomplete="off" name="qty" placeholder="ใส่จำนวน" data-validation="number" data-validation-allowing="float">
                                </div> -->
                                <button type="submit" class="btn btn-success">หยิบใส่ตะกร้า</button>
                                    </form>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div><!-- /.blog-main -->

    </div><!-- /.row -->

</div><!-- /.container -->
<?php
/*
 * footer***********************************************************************
 */
require 'template/front/footer.php';
/*
 * footer***********************************************************************
 */