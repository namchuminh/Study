<?php require(APPPATH.'views/Student/layouts/header.php'); ?>
<div class="content-wrapper" style="min-height: 1203.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Quản Lý Cá Nhân</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url('ca-nhan/'); ?>">Quản Lý Cá Nhân</a></li>
              <li class="breadcrumb-item active">Cập Nhật Cá Nhân</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card card-default">
          <!-- /.card-header -->
          <div class="card-body">
            <form method="post" enctype="multipart/form-data">
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="ten">Họ Tên</label>
                    <input type="text" class="form-control" placeholder="Họ tên" name="tenhocsinh" value="<?php echo $detail[0]['TenHocSinh']; ?>" required>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="ten">Ngày Sinh</label>
                    <input type="date" class="form-control" name="ngaysinh" value="<?php echo $detail[0]['NgaySinh']; ?>" required>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="gender">Giới Tính</label>
                    <select name="gioitinh" class="form-control">
                      <option value="1" <?php echo $detail[0]['NgaySinh'] == 1 ? "selected" : ""; ?>>Nam</option>
                      <option value="0" <?php echo $detail[0]['NgaySinh'] == 0 ? "selected" : ""; ?>>Nữ</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="ten">Trường Học</label>
                    <input type="tentruong" class="form-control" id="ten" name="tentruong" placeholder="Nhập tên trường học" value="<?php echo $detail[0]['TenTruong']; ?>" required>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="ten">Tài Khoản</label>
                    <input class="form-control" placeholder="Tài khoản" name="taikhoan" value="<?php echo $detail[0]['TaiKhoan']; ?>" disabled>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="ten">Mật Khẩu</label>
                    <input type="password" class="form-control" placeholder="Nhập mật khẩu mới" name="matkhau">
                  </div>
                </div>
              </div> 
              <button class="btn btn-primary">Lưu Thông Tin</button>
            </form>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
<style type="text/css">
  .form-control:disabled, .form-control[readonly] {
      background-color: white;
      opacity: 1;
  }
</style>