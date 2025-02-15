<?php require(APPPATH.'views/Student/layouts/header.php'); ?>
<script src="<?php echo base_url('public/ckeditor5/build/ckeditor.js') ?>"></script>
<div class="content-wrapper" style="min-height: 1203.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Trang Chủ</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url('bai-thi/'); ?>">Bài Thi</a></li>
              <li class="breadcrumb-item active">Đáp Án Bài Thi Số <?php echo $detail[0]['MaBaiThi']; ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- /.row -->
        <form class="row" action="<?php echo base_url('gui-dap-an/'); ?>" method="POST">
          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Bài Thi Số <?php echo $detail[0]['MaBaiThi']; ?></h5>
            	</div>
            	<div class="card-body">
            		<?php if($detail[0]['LoaiBaiThi'] == 1){ ?>
            			<?php foreach ($cauhoi as $key => $value): ?>
		            		<dl>
					            <dt>Câu <?php echo $key + 1 ?>: <?php echo $value['TenCauHoi'] ?></dt>
					            <dd></dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,A" name="<?php echo $value['MaCauHoi'] ?>"
					            	<?php echo $this->Model_BaiThi->checkTraLoi($maketqua,$value['MaCauHoi'])[0]['DapAnChon'] == "A" ? "checked" : "disabled" ?>
					            	>
						            A. <?php echo $value['A'] ?>
					            </dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,B" name="<?php echo $value['MaCauHoi'] ?>"
					            	<?php echo $this->Model_BaiThi->checkTraLoi($maketqua,$value['MaCauHoi'])[0]['DapAnChon'] == "B" ? "checked" : "disabled" ?>
					            	>
					            	B. <?php echo $value['B'] ?>
					            </dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,C" name="<?php echo $value['MaCauHoi'] ?>"
					            	<?php echo $this->Model_BaiThi->checkTraLoi($maketqua,$value['MaCauHoi'])[0]['DapAnChon'] == "C" ? "checked" : "disabled" ?>
					            	>
						            C. <?php echo $value['C'] ?>
					            </dd>
					            <dd>
					            	<input class="form-check-input" type="radio" value="<?php echo $value['MaCauHoi'] ?>,D" name="<?php echo $value['MaCauHoi'] ?>"
					            		<?php echo $this->Model_BaiThi->checkTraLoi($maketqua,$value['MaCauHoi'])[0]['DapAnChon'] == "D" ? "checked" : "disabled" ?>
					            	>
						            D. <?php echo $value['D'] ?>
					            </dd>
					        </dl>
					        <hr>
					        <span>
					        	<?php if($this->Model_BaiThi->checkTraLoi($maketqua,$value['MaCauHoi'])[0]['TrangThai'] == "Sai"){ ?>
					        		<i>Sai, Đáp án đúng: <b><?php echo $this->Model_BaiThi->checkTraLoi($maketqua,$value['MaCauHoi'])[0]['DapAnDung']; ?></b></i>
					        	<?php }else{ ?>
					        		<i>Đúng</i>
					        	<?php } ?>
					        </span>
					        <hr>
				        <?php endforeach ?>
				    <?php }else{ ?>
				    	<?php for($i = 0; $i < count($cauhoi); $i++): ?>
					        <dl>
					            <dt>Câu <?php echo $i + 1 ?>: <?php echo $cauhoi[$i]['TenCauHoi'] ?></dt>
					            <br>
					            <dd>
					            	<input type="hidden" name="macauhoi<?php echo $i; ?>" value="<?php echo $cauhoi[$i]['MaCauHoi'] ?>">
					            	<textarea class="form-control" name="bailam<?php echo $i; ?>"></textarea>
					            </dd>
					        </dl>
				  		<?php endfor ?>
				    <?php } ?>
            	</div>
            	<div class="text-left ml-3">
            		<a class="btn btn-primary mb-3" href="<?php echo base_url('xem-ket-qua/') ?>">Quay Lại</a>
		        </div>
            </div>
          </div>
        </form>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<style type="text/css">
	.form-check-input {
	    position: unset;
	    margin-top: .3rem;
	    margin-left: unset;
	}
	label:not(.form-check-label):not(.custom-file-label) {
	    font-weight: unset;
	    cursor: pointer;
	}

	#timer {
        font-size: 2em;
        color: red;
    }
    .ck-editor__editable {min-height: 200px;}
</style>
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
