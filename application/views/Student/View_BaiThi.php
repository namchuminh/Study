<?php require(APPPATH.'views/Student/layouts/header.php'); ?>
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
              <li class="breadcrumb-item active">Bài Thi</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Danh Sách Bài Thi</h5>
            	</div>
            </div>
            <div class="row">
            	<?php foreach ($list as $key => $value): ?>
            		<div class="col-md-4">
			            <div class="card">
			              <div class="card-header bg-dark">
			                <h4 class="card-title" style="color: white; text-transform: capitalize;">
			                  <i class="fas fa-book-open"></i>
			                   Bài thi số <?php echo $value['MaBaiThi'] ?>
			                </h4>
			              </div>
			              <!-- /.card-header -->
			              <div class="card-body">
			                <dl>
			                	<dt>Trình Độ Thi</dt>
			                  <dd><?php echo $value['TenTrinhDo'] ?></dd>
			                  <dt>Loại Bài Thi</dt>
			                  <dd><?php echo $value['LoaiBaiThi'] == 1 ? "Trắc Nghiệm" : "Tự Luận"; ?></dd>
			                  <dt>Số Câu Hỏi</dt>
			                  <dd><?php echo $value['SoCauHoi'] ?> Câu</dd>
			                  <dt>Mức Độ</dt>
			                  <dd>
			                  		<?php if($value['MucDo'] == 1){ ?>
		                            Dễ 
		                        <?php }else if($value['MucDo'] == 2){ ?>
		                            Trung Bình
		                        <?php }else if($value['MucDo'] == 3){ ?>
		                            Khó
		                        <?php } ?>
			                  </dd>
			                  <dt>Thời Gian Làm</dt>
			                  <dd>
			                  	<?php echo $value['ThoiGianLam'] ?> Phút
			                  </dd>
			                </dl>
			                <div class="text-right">
			              		<a href="<?php echo base_url('lam-bai-thi/'.$value['MaBaiThi'].'/'); ?>" class="btn btn-primary"><i class="fa-regular fa-pen-to-square"></i> Làm Bài Thi</a>
			                </div>
			                
			              </div>
			            </div>
			            <!-- /.card -->
			          </div>
            	<?php endforeach ?>
						</div>

						<?php if(isset($_GET['mucdo'])){ ?>
							<div class="card-footer clearfix bg-default">
	                <ul class="pagination pagination-sm m-0 justify-content-center">
	                	<?php for($i = 1; $i <= $totalPages; $i++){ ?>
	                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('bai-thi/'.$i.'/trang/?mucdo='.$_GET['mucdo']) ?>"><?php echo $i; ?></a></li>
	                  	<?php } ?>      
	                </ul>
	            </div>
						<?php }else{ ?>
							<div class="card-footer clearfix bg-default">
                <ul class="pagination pagination-sm m-0 justify-content-center">
                	<?php for($i = 1; $i <= $totalPages; $i++){ ?>
                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('bai-thi/'.$i.'/trang/') ?>"><?php echo $i; ?></a></li>
                  	<?php } ?>      
                </ul>
            	</div>
						<?php } ?>
          </div>

        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
