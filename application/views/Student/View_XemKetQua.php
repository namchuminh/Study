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
              <li class="breadcrumb-item"><a href="<?php echo base_url('bai-thi/'); ?>">Bài Thi</a></li>
              <li class="breadcrumb-item active">Xem Kết Quả</li>
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
            		<h5>Kết Quả Thi Mới Nhất</h5>
            	</div>
            	<div class="card-body table-responsive p-0">
                <table class="table table-hover">
                  <thead>
                    <tr>
                    	<th>#</th>
                    	<th>Thời Gian Thi</th>
                      <th>Tên Bài Thi</th>
                      <th>Loại Bài Thi</th>
                      <th>Mức Độ</th>
                      <th>Số Câu Hỏi</th>
                      <th>Số Câu Đúng</th>
                      <th>Chấm Điểm</th>
                    </tr>
                  </thead>
                  <?php if(count($late) >= 1): ?>
	                  <tbody>
	                  	<tr>
		                      <td>1</td>
		                      <td>
	                          <?php echo $late[0]['ThoiGian'] ?>
	                        </td>
	                        <td>
	                          Bài Thi Số <?php echo $late[0]['MaBaiThi'] ?>
	                        </td>
	                        <td>
	                        	<?php echo $late[0]['LoaiBaiThi'] == 1 ? "Trắc Nghiệm" : "Tự Luận" ?>
	                        </td>
		                      <td>
		                      	<?php if($late[0]['MucDo'] == 1){ ?>
		                            Nhận Biết
		                        <?php }else if($late[0]['MucDo'] == 2){ ?>
		                            Thông Hiểu
		                        <?php }else if($late[0]['MucDo'] == 3){ ?>
		                            Vận Dụng
		                        <?php }else if($late[0]['MucDo'] == 3){ ?>
		                        		Vận Dụng Cao
		                        <?php }else{ ?>
		                            Đầy Đủ Mức Độ
		                        <?php } ?>
		                      </td>
		                      <td>
		                      	<?php echo $late[0]['SoCauHoi'] ?> Câu
		                      </td>
		                      <td>
		                      	<?php echo $late[0]['SoCauDung'] == -1 ? "Chưa Chấm" : $late[0]['SoCauDung']. " Câu"; ?> 
		                      </td>
		                      <td>
		                      	<?php echo $late[0]['ChamDiem'] == -1 ? "Chưa Chấm" : $late[0]['ChamDiem']. " Điểm"; ?> 
		                      </td>
		                    </tr>
	                  </tbody>
	                <?php endif ?>
                </table>
                <?php if(count($late) <= 0): ?>
                	<p class="mt-2" style="text-align: center;">Chưa có kết quả thi mới nhất!</p>
                <?php endif ?>
              </div>
            </div>
          </div>

          <div class="col-12">
            <div class="card">
            	<div class="card-header">
            		<h5>Tất Cả Kết Quả Thi</h5>
            	</div>
            	<div class="card-body table-responsive p-0">
                <table class="table table-hover">
                  <thead>
                    <tr>
                    	<th>#</th>
                    	<th>Thời Gian Thi</th>
                      <th>Tên Bài Thi</th>
                      <th>Loại Bài Thi</th>
                      <th>Mức Độ</th>
                      <th>Số Câu Hỏi</th>
                      <th>Số Câu Đúng</th>
                      <th>Chấm Điểm</th>
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
		                    </tr>
		                  <?php endforeach ?>
	                  </tbody>
                </table>
                <?php if(count($list) <= 0): ?>
                	<p class="mt-2" style="text-align: center;">Chưa có kết quả thi mới nhất!</p>
                <?php endif ?>
              </div>
              <div class="card-footer clearfix bg-default">
                <ul class="pagination pagination-sm m-0 justify-content-center">
                	<?php for($i = 1; $i <= $totalPages; $i++){ ?>
                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('xem-ket-qua/'.$i.'/trang/') ?>"><?php echo $i; ?></a></li>
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
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
