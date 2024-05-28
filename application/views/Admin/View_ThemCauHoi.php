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
              <li class="breadcrumb-item active">Bài thi số <?php echo $detail[0]['MaBaiThi']; ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <form class="row" method="POST">
          <?php if($detail[0]['LoaiBaiThi'] == 1){ ?>
            <?php if(count($cauhoi) <= 0){ ?>
              <?php for($i = 1; $i <= $detail[0]['SoCauHoi']; $i++): ?>
                <div class="col-md-4">
                  <div class="card card-default">
                    <!-- /.card-header -->
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <label for="ten">Câu Hỏi <?php echo $i ?></label>
                            <input type="text" name="tencauhoi<?php echo $i ?>" class="form-control" placeholder="Nhập tên câu hỏi <?php echo $i ?>" required>
                            <label for="ten" class="mt-2">Đáp Án </label>
                            <input type="text" name="A<?php echo $i ?>" class="form-control mb-2" placeholder="Nhập đáp án A" required>
                            <input type="text" name="B<?php echo $i ?>" class="form-control mb-2" placeholder="Nhập đáp án B" required>
                            <input type="text" name="C<?php echo $i ?>" class="form-control mb-2" placeholder="Nhập đáp án C" required>
                            <input type="text" name="D<?php echo $i ?>" class="form-control mb-2" placeholder="Nhập đáp án D" required>
                            <label for="ten">Đáp Án Đúng</label>
                            <select class="form-control" name="dapandung<?php echo $i ?>">
                              <option value="A">A</option>
                              <option value="B">B</option>
                              <option value="C">C</option>
                              <option value="D">D</option>
                            </select>
                          </div>
                        </div>
                      </div> 
                    </div>
                  </div>
                </div>
              <?php endfor ?>
            <?php }else{ ?>
              <?php foreach ($cauhoi as $key => $value): ?>
                <div class="col-md-4">
                  <div class="card card-default">
                    <!-- /.card-header -->
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <label for="ten">Câu Hỏi <?php echo $key + 1 ?></label>
                            <input type="hidden" name="macauhoi<?php echo $key + 1 ?>" value="<?php echo $value['MaCauHoi']; ?>">
                            <input type="text" name="tencauhoi<?php echo $key + 1 ?>" class="form-control" placeholder="Nhập tên câu hỏi <?php echo $key + 1 ?>" value="<?php echo $value['TenCauHoi']; ?>" required>
                            <label for="ten" class="mt-2">Đáp Án </label>
                            <input type="text" name="A<?php echo $key + 1 ?>" class="form-control mb-2" placeholder="Nhập đáp án A" value="<?php echo $value['A']; ?>" required>
                            <input type="text" name="B<?php echo $key + 1 ?>" class="form-control mb-2" placeholder="Nhập đáp án B" value="<?php echo $value['B']; ?>" required>
                            <input type="text" name="C<?php echo $key + 1 ?>" class="form-control mb-2" placeholder="Nhập đáp án C" value="<?php echo $value['C']; ?>" required>
                            <input type="text" name="D<?php echo $key + 1 ?>" class="form-control mb-2" placeholder="Nhập đáp án D" value="<?php echo $value['D']; ?>" required>
                            <label for="ten">Đáp Án Đúng</label>
                            <select class="form-control" name="dapandung<?php echo $key + 1 ?>">
                              <option value="A" <?php echo $value['DapAnDung'] == 'A' ? "selected" : ""; ?>>A</option>
                              <option value="B" <?php echo $value['DapAnDung'] == 'B' ? "selected" : ""; ?>>B</option>
                              <option value="C" <?php echo $value['DapAnDung'] == 'C' ? "selected" : ""; ?>>C</option>
                              <option value="D" <?php echo $value['DapAnDung'] == 'D' ? "selected" : ""; ?>>D</option>
                            </select>
                          </div>
                        </div>
                      </div> 
                    </div>
                  </div>
                </div>
              <?php endforeach ?>
            <?php } ?>
          <?php }else{ ?>
            <?php if(count($cauhoi) <= 0){ ?>
              <?php for($i = 1; $i <= $detail[0]['SoCauHoi']; $i++): ?>
                <div class="col-md-6">
                    <div class="card card-default">
                      <!-- /.card-header -->
                      <div class="card-body">
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group">
                              <label for="ten">Câu Hỏi <?php echo $i ?></label>
                              <textarea type="text" name="tencauhoi<?php echo $i ?>" class="form-control" placeholder="Nhập tên câu hỏi <?php echo $i ?>" rows="5" required></textarea>
                            </div>
                          </div>
                        </div> 
                      </div>
                    </div>
                </div>
              <?php endfor ?>
            <?php }else{ ?>
              <?php foreach ($cauhoi as $key => $value): ?>
                <div class="col-md-6">
                    <div class="card card-default">
                      <!-- /.card-header -->
                      <div class="card-body">
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group">
                              <label for="ten">Câu Hỏi <?php echo $key + 1 ?></label>
                              <input type="hidden" value="<?php echo $value['MaCauHoi']; ?>" name="macauhoi<?php echo $key + 1 ?>">
                              <textarea type="text" name="tencauhoi<?php echo $key + 1 ?>" class="form-control" placeholder="Nhập tên câu hỏi <?php echo $key + 1 ?>" rows="5" required><?php echo $value['TenCauHoi'] ?></textarea>
                            </div>
                          </div>
                        </div> 
                      </div>
                    </div>
                </div>
              <?php endforeach ?>
            <?php } ?>
          <?php } ?>
          <div class="col-md-12 mb-3">
            <a class="btn btn-success" href="<?php echo base_url('admin/bai-thi/'); ?>">Quay Lại</a>
            <button class="btn btn-primary">Cập Nhật Câu Hỏi</button>
          </div>
        </form>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<?php require(APPPATH.'views/admin/layouts/footer.php'); ?>
