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
              <li class="breadcrumb-item active">Bài Học & Bài Thi</li>
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
            		<h5>Danh Sách Bài Học Mới</h5>
            	</div>
            </div>
            <div class="row">
            	<?php foreach ($baihoc as $key => $value): ?>
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
          </div>

          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Danh Sách Bài Thi Mới</h5>
            	</div>
            </div>
            <div class="row">
            	<?php foreach ($baithi as $key => $value): ?>
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
          </div>

          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Kết Quả Thi Gần Đây</h5>
            	</div>
            	<div class="card-body table-responsive p-0">
                <table class="table table-hover">
                  <thead>
                    <tr>
                    	<th>#</th>
                    	<th style="width: fit-content;">Thời Gian Thi</th>
                    	<th style="width: 150px;">Tên Người Thi</th>
                    	<th style="width: 150px;">Trường Học</th>
                      <th>Tên Bài Thi</th>
                      <th>Loại Bài Thi</th>
                      <th>Số Câu Hỏi</th>
                      <th>Số Câu Đúng</th>
                      <th>Chấm Điểm</th>
                    </tr>
                  </thead>
	                  <tbody>
	                  	<?php foreach ($result as $key => $value): ?>
	                  		<tr>
		                      <td><?php echo $key + 1 ?></td>
		                      <td>
	                          <?php echo $value['ThoiGian'] ?>
	                        </td>
	                        <td>
	                        	<?php echo $value['TenHocSinh'] ?>
	                        </td>
	                        <td>
	                        	<?php echo $value['TenTruong'] ?>
	                        </td>
	                        <td>
	                          Bài Thi Số <?php echo $value['MaBaiThi'] ?>
	                        </td>
	                        <td>
	                        	<?php echo $value['LoaiBaiThi'] == 1 ? "Trắc Nghiệm" : "Tự Luận" ?>
	                        </td>
		                      <td>
		                      	<?php echo $value['SoCauHoi'] ?> Câu
		                      </td>
		                      <td>
		                      	<?php echo $value['SoCauDung'] == -1 ? "Chưa Chấm" : $value['SoCauDung'] ." Câu"; ?> 
		                      </td>
		                      <td>
		                      	<?php echo $value['ChamDiem'] == -1 ? "Chưa Chấm" : $value['ChamDiem']. " Điểm"; ?> 
		                      </td>
		                    </tr>
		                  <?php endforeach ?>
	                  </tbody>
                </table>
                <?php if(count($result) <= 0): ?>
                	<p class="mt-2" style="text-align: center;">Chưa có kết quả thi gần đây!</p>
                <?php endif ?>
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
