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
              <li class="breadcrumb-item"><a href="<?php echo base_url('bai-hoc/'); ?>">Bài Học</a></li>
              <li class="breadcrumb-item active"><?php echo $detail[0]['TenBaiHoc']; ?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
     <section class="content">
      <div class="container-fluid">
        <form method="post" enctype="multipart/form-data" class="row">
          <div class="col-12">
            <div class="card card-default">
              <div class="card-header">
                <h5>Nội Dung Bài Học: <?php echo $detail[0]['TenBaiHoc'] ?></h5>
              </div>
            </div>
          </div>
          <div class="col-md-9">
              <div class="card card-default" style="min-height: 370px;">
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                      
                      <div class="col-md-12">
                        <div class="form-group">
                          <?php echo $detail[0]['MoTa']; ?>
                        </div>
                      </div>
                    </div> 
                </div>
              </div>
          </div>
          <div class="col-md-3">
              <div class="card card-default">
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="ten">Tên Bài Học</label>
                          <input type="text" class="form-control tenchinh" id="ten" placeholder="Tên bài học" name="tenbaihoc" value="<?php echo $detail[0]['TenBaiHoc']; ?>" disabled>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="ten">Trình Độ Bài Học</label>
                          <select name="matrinhdo" class="form-control" disabled>
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
                          <label for="ten">Loại Bài Học</label>
                          <select name="loaibaihoc" class="form-control" disabled>
                            <option value="1" <?php echo $detail[0]['LoaiBaiHoc'] == 1 ? "selected" : ""; ?>>Bài Học SGK</option>
                            <option value="2" <?php echo $detail[0]['LoaiBaiHoc'] == 2 ? "selected" : ""; ?>>Bài Học Cơ Bản</option>
                            <option value="3" <?php echo $detail[0]['LoaiBaiHoc'] == 3 ? "selected" : ""; ?>>Bài Học Nâng Cao</option>
                            <option value="4" <?php echo $detail[0]['LoaiBaiHoc'] == 4 ? "selected" : ""; ?>>Bài Học Luyện Thi</option>
                          </select>
                        </div>
                      </div>

                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="ten">File Tài Liệu 
                          </label>
                          <br>
                          <?php if($detail[0]['TepTin'] != NULL){ ?>
	                          <a href="<?php echo $detail[0]['TepTin']; ?>">Tải Tài Liệu</a>
	                        <?php }else{ ?>
	                        	<a href="#">Không Có Tài Liệu</a>
	                        <?php } ?>
                        </div>
                      </div>
                    </div> 
                </div>
              </div>
          </form>
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