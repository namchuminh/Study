<?php require(APPPATH.'views/admin/layouts/header.php'); ?>
<script src="<?php echo base_url('public/ckeditor5/build/ckeditor.js') ?>"></script>
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
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/bai-hoc/'); ?>">Quản Lý Bài Học</a></li>
              <li class="breadcrumb-item active">Thêm Bài Học</li>
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
                <h5>Thêm Bài Học</h5>
              </div>
            </div>
          </div>
          <div class="col-md-9">
              <div class="card card-default">
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                      
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="ten">Nội Dung Bài Học</label>
                          <textarea id="editor" class="form-control editor" name="mota" placeholder="Nhập nội dung bài học"></textarea>
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
                          <input type="text" class="form-control tenchinh" id="ten" placeholder="Tên bài học" name="tenbaihoc" required>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <div class="w-100">
                            <label for="ten">Đường Dẫn</label>
                            <span id="taoduongdan" class="float-right" style="cursor: pointer;">Tạo tự động?</span>
                          </div>
                          <input type="text" class="form-control" id="duongdan" placeholder="Đường dẫn" name="duongdan" required>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="ten">Trình Độ Bài Học</label>
                          <select name="matrinhdo" class="form-control" required>
                            <?php foreach ($trinhdo as $key => $value): ?>
                              <option value="<?php echo $value['MaTrinhDo']; ?>"><?php echo $value['TenTrinhDo']; ?></option>
                            <?php endforeach ?>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <select name="loaibaihoc" class="form-control d-none" required>
                            <option value="1" selected>Bài Học SGK</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="ten">File Tài Liệu</label>
                          <input type="file" class="form-control" id="ten" name="teptin">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="ten">Chọn Bài Thi</label>
                          <select name="mabaithi" class="form-control" required>
                            <?php foreach ($baithi as $key => $value2): ?>
                              <option value="<?php echo $value2['MaBaiThi']; ?>">Bài Thi Số <?php echo $value2['MaBaiThi']; ?></option>
                            <?php endforeach ?>
                          </select>
                        </div>
                      </div>
                    </div> 
                    <a class="btn btn-success" href="<?php echo base_url('admin/bai-hoc/'); ?>">Quay Lại</a>
                    <button class="btn btn-primary">Thêm Bài Học</button>
                </div>
              </div>
          </form>
        </div>

      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<?php require(APPPATH.'views/admin/layouts/footer.php'); ?>
<script type="text/javascript" src="<?php echo base_url('public/ckeditor5/sample/script.js'); ?>"></script>
<script>
    function createSlug(str) {
        // Chuyển đổi tiếng Việt thành dạng slug
        str = str.toLowerCase().trim();
        str = str.replace(/\s+/g, '-'); // Thay thế khoảng trắng bằng dấu gạch ngang
        str = convertVietnameseToSlug(str); // Xử lý các dấu tiếng Việt

        return str;
    }

    function convertVietnameseToSlug(str) {
        var slug = str;

        // Xử lý dấu tiếng Việt
        slug = slug.replace(/[áàảãạăắằẳẵặâấầẩẫậ]/g, 'a');
        slug = slug.replace(/[éèẻẽẹêếềểễệ]/g, 'e');
        slug = slug.replace(/[íìỉĩị]/g, 'i');
        slug = slug.replace(/[óòỏõọôốồổỗộơớờởỡợ]/g, 'o');
        slug = slug.replace(/[úùủũụưứừửữự]/g, 'u');
        slug = slug.replace(/[ýỳỷỹỵ]/g, 'y');
        slug = slug.replace(/đ/g, 'd');

        return slug;
    }

    $(document).ready(function(){
        $('#taoduongdan').click(function(){
            if($(".tenchinh").val() == ""){
                toastr.options = {
	                closeButton: true,
	                progressBar: true,
	                positionClass: 'toast-top-right', // Vị trí hiển thị
	                timeOut: 5000 // Thời gian tự động đóng
	            };
	            toastr.error('Vui lòng nhập tên Bài Học!', 'Thất Bại');
            }else{
                $("#duongdan").val(createSlug($(".tenchinh").val()))
            }
        })
    });
</script>
<style type="text/css">
  .ck-editor__editable {min-height: 468px;}
</style>
