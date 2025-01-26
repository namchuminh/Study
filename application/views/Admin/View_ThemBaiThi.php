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
              <li class="breadcrumb-item active">Thêm Bài Thi</li>
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
                          <option value="<?php echo $value['MaTrinhDo']; ?>"><?php echo $value['TenTrinhDo']; ?></option>
                        <?php endforeach ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="ten">Mức Độ Bài Thi</label>
                      <select name="mucdo" class="form-control" required>
                        <option value="1">Dễ</option>
                        <option value="2">Trung Bình</option>
                        <option value="3">Khó</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="ten">Số Câu Hỏi</label>
                      <input type="number" class="form-control" id="ten" name="socauhoi" placeholder="Số câu hỏi của bài thi. VD: 50" required>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="form-group">
                      <label for="ten">Thời Gian Làm (Tính theo Phút)</label>
                      <input type="number" class="form-control" id="ten" name="thoigianlam" placeholder="Thời gian làm bài theo tính phút. VD: 90" required>
                    </div>
                  </div>
              </div> 
              <a class="btn btn-success" href="<?php echo base_url('admin/bai-thi/'); ?>">Quay Lại</a>
              <button class="btn btn-primary">Thêm Bài Thi</button>
            </form>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<?php require(APPPATH.'views/admin/layouts/footer.php'); ?>
