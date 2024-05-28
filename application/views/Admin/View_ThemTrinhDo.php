<?php require(APPPATH.'views/admin/layouts/header.php'); ?>
<div class="content-wrapper" style="min-height: 1203.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Quản Lý Trình Độ</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'); ?>">Trang Chủ</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url('admin/trinh-do/'); ?>">Quản Lý Trình Độ</a></li>
              <li class="breadcrumb-item active">Thêm Trình Độ</li>
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
                    <label for="ten">Tên Trình Độ</label>
                    <input type="text" class="form-control tenchinh" id="ten" name="tentrinhdo" placeholder="Tên trình độ" required>
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
              </div> 
              <a class="btn btn-success" href="<?php echo base_url('admin/trinh-do/'); ?>">Quay Lại</a>
              <button class="btn btn-primary">Thêm Trình Độ</button>
            </form>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<?php require(APPPATH.'views/admin/layouts/footer.php'); ?>
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
              toastr.error('Vui lòng nhập tên chuyên mục!', 'Thất Bại');
            }else{
                $("#duongdan").val(createSlug($(".tenchinh").val()))
            }
        })
    });
</script>