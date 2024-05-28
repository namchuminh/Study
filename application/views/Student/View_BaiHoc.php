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
              <li class="breadcrumb-item active">Bài Học</li>
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
            		<h5>Danh Sách Bài Học</h5>
            	</div>
            </div>
            <div class="row">
            	<?php foreach ($list as $key => $value): ?>
            		<div class="col-md-4">
			            <div class="card">
			              <div class="card-header bg-dark">
			                <h4 class="card-title" style="color: white; text-transform: capitalize;">
			                  <i class="fas fa-book-open"></i>
			                   Bài Học <?php echo $value['TenTrinhDo'] ?>
			                </h4>
			              </div>
			              <!-- /.card-header -->
			              <div class="card-body">
			                <dl>
			                	<dt>Tên Bài Học</dt>
			                  <dd style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; display: block;"><?php echo $value['TenBaiHoc'] ?></dd>
			                  <dt>Người Đăng</dt>
			                  <dd><?php echo $value['TenGiaoVien'] ?></dd>
			                  <dt>Loại Bài Học</dt>
			                  <dd>
			                  	<?php if($value['LoaiBaiHoc'] == 1){ ?>
		                            Bài Học SGK
		                        <?php }else if($value['LoaiBaiHoc'] == 2){ ?>
		                            Bài Học Cơ Bản
		                        <?php }else if($value['LoaiBaiHoc'] == 3){ ?>
		                            Bài Học Nâng Cao
		                        <?php }else{ ?>
		                            Bài Học Luyện Thi
		                        <?php } ?>
			                  </dd>
			                  <dt>File Tài Liệu</dt>
			                  <dd>
			                  	<?php if($value['TepTin'] != NULL){ ?>
				                		Có Tài Liệu
				                	<?php }else{ ?>
				                		Không Có Tài Liệu
				                	<?php } ?>
			                  </dd>
			                </dl>
			                <div class="text-right">
			                	<?php if($value['TepTin'] != NULL){ ?>
			                		<a href="<?php echo $value['TepTin'] ?>" class="btn btn-success"><i class="fa-regular fa-file"></i> Tải Tài Liệu</a>
			                	<?php } ?>
			              		<a href="<?php echo base_url('bai-hoc/'.$value['DuongDan'].'/'); ?>" class="btn btn-primary"><i class="fa-regular fa-eye"></i> Xem Nội Dung</a>
			                </div>
			                
			              </div>
			            </div>
			            <!-- /.card -->
			          </div>
            	<?php endforeach ?>
						</div>
						<div class="card-footer clearfix bg-default">
                <ul class="pagination pagination-sm m-0 justify-content-center">
                	<?php for($i = 1; $i <= $totalPages; $i++){ ?>
                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('bai-hoc/'.$i.'/trang/') ?>"><?php echo $i; ?></a></li>
                  	<?php } ?>      
                </ul>
              </div>
          </div>

        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
