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
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/bai-thi/'); ?>">Quản Lý Bài Thi</a></li>
              <li class="breadcrumb-item active">Bài thi số <?php echo $detail[0]['MaBaiThi'] ?></li>
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
                      <label for="ten">Trình Độ Bài Thi</label>
                      <select name="matrinhdo" class="form-control" required>
                        <?php foreach ($trinhdo as $key => $value): ?>
                          <?php if($value['MaTrinhDo'] == $detail[0]['MaTrinhDo']){ ?>
                            <option value="<?php echo $value['MaTrinhDo']; ?>" selected><?php echo $value['TenTrinhDo']; ?></option>
                          <?php }else{ ?>
                            <option value="<?php echo $value['MaTrinhDo']; ?>"><?php echo $value['TenTrinhDo']; ?></option>
                          <?php } ?>
                        <?php endforeach ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="ten">Loại Bài Thi</label>
                      <select name="loaibaithi" class="form-control" required>
                        <option value="1" <?php echo $detail[0]['LoaiBaiThi'] == 1 ? "selected" : ""; ?>>Trắc Nghiệm</option>
                        <option value="2" <?php echo $detail[0]['LoaiBaiThi'] == 2 ? "selected" : ""; ?>>Tự Luận</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="ten">Mức Độ Bài Thi</label>
                      <select name="mucdo" class="form-control" required>
                        <option value="1" <?php echo $detail[0]['MucDo'] == 1 ? "selected" : ""; ?>>Nhận Biết</option>
                        <option value="2" <?php echo $detail[0]['MucDo'] == 2 ? "selected" : ""; ?>>Thông Hiểu</option>
                        <option value="3" <?php echo $detail[0]['MucDo'] == 3 ? "selected" : ""; ?>>Vận Dụng</option>
                        <option value="4" <?php echo $detail[0]['MucDo'] == 4 ? "selected" : ""; ?>>Vận Dụng Cao</option>
                        <option value="5" <?php echo $detail[0]['MucDo'] == 5 ? "selected" : ""; ?>>Đẩy Đủ Mức Độ</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="ten">Số Câu Hỏi</label>
                      <input type="number" class="form-control" id="ten" name="socauhoi" placeholder="Số câu hỏi của bài thi. VD: 50" value="<?php echo $detail[0]['SoCauHoi']; ?>" required>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="ten">Thời Gian Làm (Tính theo Phút)</label>
                      <input type="number" class="form-control" id="ten" name="thoigianlam" placeholder="Thời gian làm bài theo tính phút. VD: 90" value="<?php echo $detail[0]['ThoiGianLam']; ?>" required>
                    </div>
                  </div>
              </div> 
              <a class="btn btn-success" href="<?php echo base_url('admin/bai-thi/'); ?>">Quay Lại</a>
              <button class="btn btn-primary">Cập Nhật Bài Thi</button>
            </form>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<?php require(APPPATH.'views/admin/layouts/footer.php'); ?>
