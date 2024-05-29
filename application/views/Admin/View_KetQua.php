<?php require(APPPATH.'views/Admin/layouts/header.php'); ?>
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
              <li class="breadcrumb-item active">Kết Quả</li>
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
            		<h5>Chưa Chấm Điểm</h5>
            	</div>
            	<div class="card-body table-responsive p-0">
                <table class="table table-hover">
                  <thead>
                    <tr>
                    	<th>#</th>
                    	<th>Thời Gian Thi</th>
                    	<th style="width: 150px;">Tên Học Sinh</th>
                    	<th style="width: 200px;">Trường Học</th>
                      <th>Tên Bài Thi</th>
                      <th>Mức Độ</th>
                      <th>Chấm Điểm</th>
                      <th>Hành Động</th>
                    </tr>
                  </thead>
	                  <tbody>
	                  	<?php foreach ($chuacham as $key => $value): ?>
		                  	<tr>
			                      <td><?php echo $key + 1; ?></td>
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
			                      	<?php if($value['MucDo'] == 1){ ?>
			                            Nhận Biết
			                        <?php }else if($value['MucDo'] == 2){ ?>
			                            Thông Hiểu
			                        <?php }else if($value['MucDo'] == 3){ ?>
			                            Vận Dụng
			                        <?php }else if($value['MucDo'] == 3){ ?>
			                        		Vận Dụng Cao
			                        <?php }else{ ?>
			                            Đầy Đủ Mức Độ
			                        <?php } ?>
			                      </td>
			                      <td>
			                      	<a class="btn btn-primary" href="<?php echo base_url('admin/ket-qua/'.$value['MaKetQua'].'/cham-diem/') ?>"><i class="fas fa-edit"></i> CHẤM ĐIỂM</a>
			                      </td>
			                      <td>
			                      	<a style="width: 100%;" class="btn btn-danger" href="<?php echo base_url('admin/ket-qua/'.$value['MaKetQua'].'/xoa/') ?>">XÓA</a>
			                      </td>
			                    </tr>
			                  <?php endforeach ?>
	                  </tbody>
                </table>
                <?php if(count($chuacham) <= 0): ?>
                	<p class="mt-2" style="text-align: center;">Không có kết quả thi chưa chấm điểm!</p>
                <?php endif ?>
              </div>
            </div>
          </div>

          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Đã Chấm Điểm</h5>
            	</div>
            	<div class="card-body table-responsive p-0">
                <table class="table table-hover">
                  <thead>
                    <tr>
                    	<th>#</th>
                    	<th style="width: fit-content;">Thời Gian Thi</th>
                    	<th style="width: 120px;">Tên Học Sinh</th>
                    	<th style="width: 120px;">Trường Học</th>
                      <th>Tên Bài Thi</th>
                      <th>Loại Bài Thi</th>
                      <th>Mức Độ</th>
                      <th>Số Câu</th>
                      <th>Đúng</th>
                      <th>Chấm Điểm</th>
                      <th>Hành Động</th>
                    </tr>
                  </thead>
	                  <tbody>
	                  	<?php foreach ($list as $key => $value): ?>
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
		                      	<?php if($value['MucDo'] == 1){ ?>
		                            Nhận Biết
		                        <?php }else if($value['MucDo'] == 2){ ?>
		                            Thông Hiểu
		                        <?php }else if($value['MucDo'] == 3){ ?>
		                            Vận Dụng
		                        <?php }else if($value['MucDo'] == 3){ ?>
		                        		Vận Dụng Cao
		                        <?php }else{ ?>
		                            Đầy Đủ Mức Độ
		                        <?php } ?>
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
		                      <td>
			                      	<a style="width: 100%;" class="btn btn-danger" href="<?php echo base_url('admin/ket-qua/'.$value['MaKetQua'].'/xoa/') ?>">XÓA</a>
			                      </td>
		                    </tr>
		                  <?php endforeach ?>
	                  </tbody>
                </table>
                <?php if(count($list) <= 0): ?>
                	<p class="mt-2" style="text-align: center;">Chưa có kết quả thi đã chấm điểm!</p>
                <?php endif ?>
              </div>
              <div class="card-footer clearfix bg-default">
                <ul class="pagination pagination-sm m-0 float-right">
                	<?php for($i = 1; $i <= $totalPages; $i++){ ?>
                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('admin/ket-qua/'.$i.'/trang/') ?>"><?php echo $i; ?></a></li>
                  	<?php } ?>      
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 <style type="text/css">
 		
 </style>
<?php require(APPPATH.'views/Admin/layouts/footer.php'); ?>
