<?php require(APPPATH.'views/admin/layouts/header.php'); ?>
<div class="content-wrapper" style="min-height: 1203.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Quản Lý Học Sinh</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item active">Quản Lý Học Sinh</li>
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
                      <th>Tên Học Sinh</th>
                      <th>Ngày Sinh</th>
                      <th>Giới Tính</th>
                      <th>Tên Trường</th>
                      <th>Hành Động</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<?php foreach ($list as $key => $value): ?>
	                    <tr>
	                      <td><?php echo $key + 1; ?></td>
	                      <td>
                          <?php echo $value['TenHocSinh']; ?>
                        </td>
                        <td>
                          <?php echo $value['NgaySinh']; ?>
                        </td>
                        <td>
                          <?php echo $value['GioiTinh'] == 1 ? "Nam" : "Nữ"; ?>
                        </td>
                        <td>
                          <?php echo $value['TenTruong']; ?>
                        </td>
	                      <td>
                          <?php if($value['TrangThai'] == -1){ ?>
                            <a href="<?php echo base_url('admin/hoc-sinh/'.$value['MaHocSinh'].'/chan/'); ?>" class="btn btn-primary" style="color: white;">
                              <i class="fa-solid fa-lock-open"></i>
                                <span>BỎ CẤM TÀI KHOẢN</span>
                            </a>
                          <?php }else{ ?>
                            <a href="<?php echo base_url('admin/hoc-sinh/'.$value['MaHocSinh'].'/chan/'); ?>" class="btn btn-danger" style="color: white;">
                              <i class="fa-solid fa-ban"></i>
                                <span>CẤM TÀI KHOẢN</span>
                            </a>
                          <?php } ?>
                        </td>
	                    </tr>
                    <?php endforeach ?>
                  </tbody>
                </table>
              </div>
              <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                	<?php for($i = 1; $i <= $totalPages; $i++){ ?>
                  		<li class="page-item"><a class="page-link" href="<?php echo base_url('admin/hoc-sinh/'.$i.'/trang/') ?>"><?php echo $i; ?></a></li>
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
