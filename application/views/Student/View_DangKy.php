<?php require(APPPATH.'views/Student/layouts/header.php'); ?>
<div class="content-wrapper" style="min-height: 1203.31px;">
	<section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Đăng Ký</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item active">Đăng Ký</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
	<section class="content">
	    <div class="container-fluid">
	    	<div class="row">
		        <div class="col-12">
		            <div class="card">
		            	<div class="row justify-content-center p-5">
					      <div class="col-md-12">
					        <h2 class="text-center">Đăng Ký - Học Sinh</h2>
					        <form method="POST">
					        	<div class="form-group">
					            <label for="fullname">Tên Học Sinh</label>
					            <input type="text" class="form-control" id="fullname" name="tenhocsinh" placeholder="Nhập họ tên" required>
					          </div>
					          <div class="form-group">
					            <label for="birday">Năm Sinh</label>
					            <input type="date" class="form-control" id="birday" name="ngaysinh" required>
					          </div>
					          <div class="form-group">
					            <label for="gender">Giới Tính</label>
					            <select name="gioitinh" class="form-control">
					            	<option value="1">Nam</option>
					            	<option value="0">Nữ</option>
					            </select>
					          </div>
					          <div class="form-group">
					            <label for="school">Trường Học</label>
					            <input type="text" class="form-control" id="school" name="tentruong" placeholder="Nhập tên trường học" required>
					          </div>
					          <div class="form-group">
					            <label for="username">Tài Khoản</label>
					            <input type="text" class="form-control" id="username" name="taikhoan" placeholder="Nhập tài khoản của bạn" required>
					          </div>
					          <div class="form-group">
					            <label for="password">Mật Khẩu</label>
					            <input type="password" class="form-control" id="password" name="matkhau" placeholder="Nhập mật khẩu của bạn" required>
					          </div>
					          <br>
					          <button type="submit" class="btn btn-primary btn-block">Đăng Ký</button>
					          <br>
					          <div class="text-center">
					          	<p>Đã có tài khoản? <a href="<?php echo base_url('dang-nhap/') ?>">Đăng Nhập</a></p>
					          </div>
					          
					        </form>
					      </div>
					    </div>
		            </div>
		        </div>
		    </div>
	   	</div>
	</section>
</div>
<?php require(APPPATH.'views/Student/layouts/footer.php'); ?>
