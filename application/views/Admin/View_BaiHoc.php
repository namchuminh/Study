<?php require(APPPATH.'views/admin/layouts/header.php'); ?>
<div class="content-wrapper" style="min-height: 1203.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Quản Lý Bài Học</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item active">Quản Lý Bài Học</li>
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
                      <th style="width: 250px;">Tên Bài Học</th>
                      <th style="width: 150px;">Loại Trình Độ</th>
                      <th>Loại Bài Học</th>
                      <th class="text-center">Số Lượt Học</th>
                      <th style="width: 250px;">Đường Dẫn</th>
                      <th>Hành Động</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<?php foreach ($list as $key => $value): ?>
	                    <tr>
	                      <td><?php echo $key + 1; ?></td>
	                      <td>
                          <a href="<?php echo base_url('bai-hoc/'.$value['DuongDan'].'/'); ?>" target="_blank"><?php echo $value['TenBaiHoc']; ?></a>
                        </td>
                        <td>
                          <a href="<?php echo base_url('bai-hoc/'.$value['DuongDanTD'].'/'); ?>" target="_blank"><?php echo $value['TenTrinhDo']; ?></a>
                        </td>
                        <td>
                          <?php if($value['LoaiBaiHoc'] == 1){ ?>
                            Bài Học SGK
                          <?php }else if($value['LoaiBaiHoc'] == 2){ ?>
                            Bài Học Cơ Bản
                          <?php }else if($value['LoaiBaiHoc'] == 3){ ?>
                            Bài Học Nâng Cao
                          <?php }else{ ?>
                            Bài Học Luyện Thi
                          <?php } ?>
                        </td>
                        <td class="text-center">
                          <?php echo $this->Model_BaiHoc->checkViewCount($value['MaBaiHoc']); ?>
                        </td>
                        <td>
                          <a href="<?php echo base_url('bai-hoc/'.$value['DuongDan'].'/'); ?>" target="_blank"><?php echo $value['DuongDan']; ?></a>
                        </td>
	                      <td>
	                      	<a href="<?php echo base_url('admin/bai-hoc/'.$value['MaBaiHoc'].'/sua/'); ?>" class="btn btn-primary" style="color: white;">
	                      		<i class="fas fa-edit"></i>
                            	<span>SỬA</span>
                           	</a>
                           	<a href="<?php echo base_url('admin/bai-hoc/'.$value['MaBaiHoc'].'/xoa/'); ?>" class="btn btn-danger" style="color: white;">
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
                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('admin/bai-hoc/'.$i.'/trang/') ?>"><?php echo $i; ?></a></li>
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
