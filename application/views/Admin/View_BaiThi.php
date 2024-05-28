<?php require(APPPATH.'views/admin/layouts/header.php'); ?>
<div class="content-wrapper" style="min-height: 1203.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Quản Lý Bài Thi</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item active">Quản Lý Bài Thi</li>
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
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Tên Bài Thi</th>
                      <th>Loại Trình Độ</th>
                      <th>Loại Bài Thi</th>
                      <th>Mức Độ Bài Thi</th>
                      <th>Số Câu Hỏi</th>
                      <th>Thời Gian Làm</th>
                      <th>Thêm Câu Hỏi</th>
                      <th>Hành Động</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<?php foreach ($list as $key => $value): ?>
	                    <tr>
	                      <td><?php echo $key + 1; ?></td>
	                      <td>
                          <a href="<?php echo base_url('bai-thi/'.$value['MaBaiThi'].'/'); ?>" target="_blank">Bài thi số <?php echo $value['MaBaiThi']; ?></a>
                        </td>
                        <td>
                          <a href="<?php echo base_url('bai-thi/'.$value['DuongDan'].'/'); ?>" target="_blank"><?php echo $value['TenTrinhDo']; ?></a>
                        </td>
                        <td><?php echo $value['LoaiBaiThi'] == 1 ? "Trắc Nghiệm" : "Tự Luận"; ?></td>
                        <td>
                          <?php if($value['MucDo'] == 1){ ?>
                            Nhận Biết
                          <?php }else if($value['MucDo'] == 2){ ?>
                            Thông Hiểu
                          <?php }else if($value['MucDo'] == 3){ ?>
                            Vận Dụng
                          <?php }else if($value['MucDo'] == 4){ ?>
                            Vận Dụng Cao
                          <?php }else{ ?>
                            Đẩy Đủ Mức Độ
                          <?php } ?>
                        </td>
                        <td>
                          <?php echo $value['SoCauHoi'] ?> Câu Hỏi
                        </td>
                        <td>
                          <?php echo $value['ThoiGianLam'] ?> Phút
                        </td>
                        <td>
                          <a href="<?php echo base_url('admin/bai-thi/'.$value['MaBaiThi'].'/them-cau-hoi/'); ?>" class="btn btn-success" style="color: white;">
                            <i class="fa-regular fa-circle-question"></i>
                              <span>THÊM CÂU HỎI</span>
                            </a>
                        </td>
	                      <td>
	                      	<a href="<?php echo base_url('admin/bai-thi/'.$value['MaBaiThi'].'/sua/'); ?>" class="btn btn-primary" style="color: white;">
	                      		<i class="fas fa-edit"></i>
                            	<span>SỬA</span>
                           	</a>
                           	<a href="<?php echo base_url('admin/bai-thi/'.$value['MaBaiThi'].'/xoa/'); ?>" class="btn btn-danger" style="color: white;">
	                      		<i class="fas fa-trash"></i>
                            	<span>XÓA</span>
                           	</a>
	                      </td>
	                    </tr>
                    <?php endforeach ?>
                  </tbody>
                </table>
              </div>
              <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                	<?php for($i = 1; $i <= $totalPages; $i++){ ?>
                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('admin/bai-thi/'.$i.'/trang/') ?>"><?php echo $i; ?></a></li>
                  	<?php } ?>      
                </ul>
              </div>
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<?php require(APPPATH.'views/admin/layouts/footer.php'); ?>
